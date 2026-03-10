module GUI
  WIDGET_CLASSES    = %w(Button Combo Edit ImageView Label ListBox PopUp Progress Slider SplitView TableView TextView UpDown View WebView)
  CONTAINER_CLASSES = %w(Panel)

  record PlacedControl, control : Widget, col : Int32, row : Int32, space : Int32

  abstract class GUIBuilder
    getter row : Int32
    getter column : Int32

    def initialize(@column = 0, @row = 0)
    end

    abstract def next_cell
    abstract def space(value : Int32)
  end

  abstract class LazyLayoutBuilder < GUIBuilder
    @placed_controls = [] of PlacedControl
    property space_after_me = 0
    property cur_space = 0

    def space(value : Int32)
      @cur_space = value
    end

    {% for klass in WIDGET_CLASSES %}
      def {{klass.downcase.id}}(*args, **args2)
        result = {{klass.id}}.new(*args, **args2)
        @placed_controls << PlacedControl.new(result, @column, @row, @cur_space)
        next_cell
        result
      end
    {% end %}
    {% for klass in CONTAINER_CLASSES %}
      def {{klass.downcase.id}}(*args, **args2, &)
        builder = RootBuilder.new
        with builder yield
        layout = builder.finish_layout
        result = {{klass.id}}.new(layout, *args, **args2)
        @placed_controls << PlacedControl.new(result, @column, @row, @cur_space)
        next_cell
        result
      end
    {% end %}

    abstract def calc_size(ncols, nrows, cached_margins : Hash(Int32, Int32)? = nil)

    def place_controls(layout : Layout)
      @placed_controls.each do |pc|
        pc.control.place(layout, pc.col, pc.row)
      end
    end
  end

  class ColumnsBuilder < LazyLayoutBuilder
    def initialize(column : Int32)
      super(column: column, row: 0)
    end

    def next_cell
      @row += 1
    end

    def calc_size(ncols, nrows, cached_margins : Hash(Int32, Int32)? = nil)
      if cached_margins
        @placed_controls.each do |pc|
          cached_margins[pc.row] = {cached_margins[pc.row]? || 0, pc.space}.max
        end
      end
      return {ncols + 1, {nrows, @row + 1}.max}
    end

    def place_controls(layout)
      super
      layout.cols[@column].margin = @space_after_me.to_f32
      @placed_controls.each do |pc|
        layout.rows[pc.row].margin = pc.space.to_f32
      end
    end
  end

  class RowsBuilder < LazyLayoutBuilder
    def initialize(row : Int32)
      super(column: 0, row: row)
    end

    def next_cell
      @column += 1
    end

    def calc_size(ncols, nrows, cached_margins : Hash(Int32, Int32)? = nil)
      if cached_margins
        @placed_controls.each do |pc|
          cached_margins[pc.col] = {cached_margins[pc.col]? || 0, pc.space}.max
        end
      end
      return { {ncols, @column + 1}.max, nrows + 1 }
    end

    def place_controls(layout)
      super
      layout.rows[@row].margin = @space_after_me.to_f32
      @placed_controls.each do |pc|
        layout.cols[pc.col].margin = pc.space.to_f32
      end
    end
  end

  class RootBuilder < LazyLayoutBuilder
    @children = [] of LazyLayoutBuilder
    @first_space = 0

    def next_cell
      raise "next_cell must be called inside column or row"
    end

    def space(value)
      if @children.empty?
        @first_space = value
      else
        @children.last.space_after_me = value
      end
    end

    def column(**args, &)
      if child = @children.last?
        raise "column cannot be called after row or grid" unless child.is_a? ColumnsBuilder
        col = child.column + 1
      else
        col = 0
      end
      child = ColumnsBuilder.new(column: col)
      @children << child
      with child yield
    end

    def row(**args, &)
      if child = @children.last?
        raise "row cannot be called after column or grid" unless child.is_a? RowsBuilder
        row = child.row + 1
      else
        row = 0
      end
      child = RowsBuilder.new(row: row)
      @children << child
      with child yield
    end

    def calc_size(ncols, nrows, cached_margins : Hash(Int32, Int32)? = nil)
      ncols, nrows = 0, 0
      @children.each do |child|
        ncols, nrows = child.calc_size(ncols, nrows, cached_margins)
      end
      return ncols, nrows
    end

    def place_controls(layout : Layout, cached_margins : Hash(Int32, Int32)? = nil)
      layout.margin = @first_space.to_f32
      @children.each &.place_controls(layout)
      if !@children.empty? && cached_margins && !cached_margins.empty?
        list = @children.first.is_a?(ColumnsBuilder) ? layout.rows : layout.cols
        cached_margins.each do |i, v|
          list[i - 1].margin = v.to_f32 if i > 0
        end
      end
    end

    def finish_layout : Layout
      cached_margins = {} of Int32 => Int32
      layout = GUI::Layout.new(*calc_size(0, 0, cached_margins))
      place_controls layout, cached_margins
      layout
    end
  end

  def self.make_layout(&)
    builder = RootBuilder.new
    with builder yield
    builder.finish_layout
  end

  abstract class Application
    def window(**args, &)
      window = Window.new(**args)
      panel = LibGUI.panel_create
      builder = RootBuilder.new
      with builder yield
      layout = builder.finish_layout
      LibGUI.panel_layout(panel, layout)
      window.panel = panel
      window
    end
  end
end
