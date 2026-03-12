module GUI
  class Layout < Widget
    @raw : LibGUI::Layout

    def initialize(@cols : Int32, @rows : Int32, **args)
      @raw = LibGUI.layout_create(@cols, @rows)
      apply_args(**args)
    end

    define_place

    lib_setter(taborder, Orientation)
    lib_setter(margin, Float32)
    lib_setter(bgcolor, Color)
    lib_setter(skcolor, Color)
    lib_setter(skcolor, Color)

    lib_function_named(set_margin, margin, value : Float32)
    lib_function_named(set_margin, margin2, v : Float32, h : Float32)
    lib_function_named(set_margin, margin4, top, bottom, left, right)
    lib_function(update)
    lib_function(cell, col, row)

    struct Column
      @owner : Layout
      @index : Int32

      def size=(value : Float32)
        LibGUI.layout_hsize(@owner, @index, value)
      end

      def margin=(value : Float32)
        LibGUI.layout_hmargin(@owner, @index, value)
      end

      def visible=(value : Bool)
        LibGUI.layout_show_col(@owner, @index, value)
      end

      def initialize(@owner, @index)
      end
    end

    struct Columns
      @owner : Layout

      def initialize(@owner)
      end

      def [](index)
        Column.new(@owner, index)
      end

      def size
        LibGUI.layout_ncols(@owner)
      end
    end

    def cols
      Columns.new(self)
    end

    struct Row
      @owner : Layout
      @index : Int32

      def size=(value : Float32)
        LibGUI.layout_vsize(@owner, @index, value)
      end

      def margin=(value : Float32)
        LibGUI.layout_vmargin(@owner, @index, value)
      end

      def visible=(value : Bool)
        LibGUI.layout_show_row(@owner, @index, value)
      end

      def initialize(@owner, @index)
      end
    end

    struct Rows
      @owner : Layout

      def initialize(@owner)
      end

      def [](index)
        Row.new(@owner, index)
      end

      def size
        LibGUI.layout_nrows(@owner)
      end
    end

    def rows
      Rows.new(self)
    end

    # TODO
    # fun layout_hexpand(layout : Layout, col : UInt32)
    # fun layout_hexpand2(layout : Layout, col1 : UInt32, col2 : UInt32, exp : Float32)
    # fun layout_hexpand3(layout : Layout, col1 : UInt32, col2 : UInt32, col3 : UInt32, exp1 : Float32, exp2 : Float32)
    # fun layout_hexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
    # fun layout_vexpand(layout : Layout, row : UInt32)
    # fun layout_vexpand2(layout : Layout, row1 : UInt32, row2 : UInt32, exp : Float32)
    # fun layout_vexpand3(layout : Layout, row1 : UInt32, row2 : UInt32, row3 : UInt32, exp1 : Float32, exp2 : Float32)
    # fun layout_vexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
    # fun layout_insert_col(layout : Layout, col : UInt32)
    # fun layout_insert_row(layout : Layout, row : UInt32)
    # fun layout_remove_col(layout : Layout, col : UInt32)
    # fun layout_remove_row(layout : Layout, row : UInt32)
    # fun layout_dbind_imp(layout : Layout, listener : Listener, type : Pointer(UInt8), size : UInt16)
    # fun layout_dbind_obj_imp(layout : Layout, obj : Pointer(Void), type : Pointer(UInt8))
    # fun layout_dbind_get_obj_imp(layout : Layout, type : Pointer(UInt8)) : Pointer(Void)
    # fun layout_dbind_update_imp(layout : Layout, type : Pointer(UInt8), size : UInt16, mname : Pointer(UInt8), mtype : Pointer(UInt8), moffset : UInt16, msize : UInt16)

    # fun layout_control(layout : Layout, col : UInt32, row : UInt32) : GuiControl
    # fun layout_get_label(layout : Layout, col : UInt32, row : UInt32) : Label ...

  end
end
