module GUI
  abstract class ActualGUIBuilder
    @owner : RootBuilder
    getter cur_column : Int32
    getter cur_row : Int32

    def initialize(@owner, @cur_column, @cur_row)
    end

    {% for typ in [Label, Button, TextView] %}
      def {{typ.stringify.split("::").last.downcase.id}}(*args, **args2)
        result = {{typ}}.new(*args, **args2)
        @owner.place_widget(result, @cur_column, @cur_row)
        next_cell
        result
      end
    {% end %}

    protected abstract def next_cell
    abstract def space(value)
  end

  class ColumnsBuilder < ActualGUIBuilder
    def initialize(@owner, @cur_column)
      @cur_row = 0
    end

    def next_cell
      @cur_row += 1
    end

    def space(value)
      if @cur_row > 0
        # @layout.rows[@cur_row - 1].margin = value.to_f32
      else
        # TODO keep current layout margin
      end
    end
  end

  class RootBuilder
    @undecided = true
    @column_builder : ColumnsBuilder?
    # @row
    # @grid
    @widgets = [] of Tuple(Widget, Int32, Int32)
    @max_col = 0
    @max_row = 0

    def place_widget(widget, col, row)
      @max_col = {col, @max_col}.max
      @max_row = {row, @max_row}.max
      @widgets << {widget, col, row}
    end

    def initialize
    end

    def column(**args, &)
      if columns = @column_builder
        col = columns.cur_column + 1
      elsif @undecided
        col = 0
      else
        raise "column cannot be called after row or grid"
      end
      @undecided = false
      # TODO - apply args
      child = ColumnsBuilder.new(self, cur_column: col)
      @column_builder = child
      with child yield
    end

    def finish : Layout
      layout = Layout.new(@max_col + 1, @max_row + 1)
      @widgets.each do |item, col, row|
        item.place(layout, col, row)
      end
      layout
    end
  end

  abstract class Application
    def window(**args, &)
      window = Window.new(**args)
      panel = LibGUI.panel_create
      builder = RootBuilder.new
      with builder yield
      layout = builder.finish
      LibGUI.panel_layout(panel, layout)
      window.panel = panel
      window
    end
  end
end
