module GUI
  abstract class GUIBuilder
    getter row : Int32
    getter column : Int32

    def initialize(@column = 0, @row = 0)
    end

    abstract def next_cell
    abstract def space(value : Int32)
  end

  abstract class ActualGUIBuilder < GUIBuilder
    @owner : Application
    @window : Window
    @layout : Layout

    def initialize(@owner, @window, @layout, @column = 0, @row = 0)
    end

    def label(*args, **args2)
      result = Label.new(*args, **args2)
      result.place(@layout, @column, @row)
      next_cell
      result
    end

    def button(*args, **args2)
      result = Button.new(*args, **args2)
      result.place(@layout, @column, @row)
      next_cell
      result
    end

    def textview(*args, **args2)
      result = TextView.new(*args, **args2)
      result.place(@layout, @column, @row)
      next_cell
      result
    end
  end

  class ColumnsBuilder < ActualGUIBuilder
    def next_cell
      @row += 1
    end

    def space(value)
      if @row > 0
        @layout.rows[@row - 1].margin = value.to_f32
      else
        # TODO keep current layout margin
      end
    end
  end

  class RootBuilder < ActualGUIBuilder
    @child : ActualGUIBuilder?

    def next_cell
      raise "next_cell must be called inside column or row"
    end

    def space(value)
      @layout.margin = value.to_f32
    end

    def column(**args, &)
      if child = @child
        raise "column cannot be called after row or grid" unless child.is_a? ColumnsBuilder
        col = child.column + 1
      else
        col = 0
      end
      # TODO - apply args
      @child = ColumnsBuilder.new(@owner, @window, @layout, column: col)
      with @child.not_nil! yield
    end
  end

  class CountingBuilder < GUIBuilder
    @column_mode = false
    getter max_row = 0
    getter max_col = 0

    def column(**args, &)
      puts self
      puts "found column"
      @column += 1
      @max_col = @column
      @column_mode = true
      @row = 0
      with self yield
    end

    def row(**args, &)
      @row += 1
      @max_row = @row
      @column_mode = false
      @column = 0
      with self yield
    end

    def grid(&)
      with self yield
    end

    def grid(cols, rows, &)
      @max_col = cols - 1
      @max_row = rows - 1
    end

    def space(value)
      # do nothing
    end

    def next_cell
      if @column_mode
        @row += 1
        @max_row = {@row, @max_row}.max
      else
        @column += 1
        @max_col = {@column, @max_col}.max
      end
    end

    def label(*args, **args2)
      next_cell
    end

    def button(*args, **args2)
      next_cell
    end

    def textview(*args, **args2)
      next_cell
    end

    def cell(col, row, **args, &)
      @max_row = {@row, @max_row}.max
      @max_col = {@column, @max_col}.max
    end
  end

  abstract class Application
    def window(**args, &)
      window = Window.new(**args)
      counter = CountingBuilder.new
      # with counter yield
      panel = LibGUI.panel_create
      # layout = GUI::Layout.new(counter.max_col + 1, counter.max_row + 1) # , margin: 5
      layout = GUI::Layout.new(1, 3) # , margin: 5
      builder = RootBuilder.new(self, window, layout)
      puts "second pass"
      with builder yield
      puts "second done"
      LibGUI.panel_layout(panel, layout)
      window.panel = panel
      window
    end
  end
end
