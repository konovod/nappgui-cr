module GUI
  WIDGET_CLASSES = %w(Button Combo Edit ImageView Label ListBox Panel PopUp Progress Slider SplitView TableView TextView UpDown View WebView)

  record PlacedControl, control : Widget, col : Int32, row : Int32

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

    def space(value : Int32)
    end

    {% for klass in WIDGET_CLASSES %}
      def {{klass.downcase.id}}(*args, **args2)
        result = {{klass.id}}.new(*args, **args2)
        @placed_controls << PlacedControl.new(result, @column, @row)
        puts "#{{{klass}}} at #{@column} #{@row}"
        next_cell
        result
      end
    {% end %}

    abstract def calc_size(ncols, nrows)

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

    def space(value)
    end

    def calc_size(ncols, nrows)
      return {ncols + 1, {nrows, @row + 1}.max}
    end
  end

  class RootBuilder < LazyLayoutBuilder
    @children = [] of LazyLayoutBuilder

    def next_cell
      raise "next_cell must be called inside column or row"
    end

    def space(value)
      # Margin will be applied after layout is created
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

    def calc_size(ncols, nrows)
      ncols, nrows = 0, 0
      @children.each do |child|
        ncols, nrows = child.calc_size(ncols, nrows)
      end
      return ncols, nrows
    end

    def place_controls(layout : Layout)
      @children.each &.place_controls(layout)
    end
  end

  abstract class Application
    def window(**args, &)
      window = Window.new(**args)
      panel = LibGUI.panel_create
      builder = RootBuilder.new
      with builder yield
      layout = GUI::Layout.new(*builder.calc_size(0, 0))
      builder.place_controls layout
      LibGUI.panel_layout(panel, layout)
      window.panel = panel
      window
    end
  end
end
