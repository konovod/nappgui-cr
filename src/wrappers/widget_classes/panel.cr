module GUI
  class Panel < Widget
    @raw : LibGUI::Panel

    def initialize(*, hscroll : Bool = false, vscroll : Bool = false, border : Bool = false, **args, &)
      @raw = LibGUI.panel_custom(hscroll, vscroll, border)
      apply_args(**args)
      builder = RootBuilder.new
      with builder yield
      layout = builder.finish_layout
      LibGUI.panel_layout(@raw, layout)
    end

    def initialize(layout : Layout, *, hscroll : Bool = false, vscroll : Bool = false, border : Bool = false, **args)
      @raw = LibGUI.panel_custom(hscroll, vscroll, border)
      apply_args(**args)
      LibGUI.panel_layout(@raw, layout)
    end

    define_place

    def replace(another : Panel)
      raise "Panel not placed" unless saved_cell = @saved_cell
      layout, x, y = saved_cell
      LibGUI.layout_panel_replace(layout, another, x, y)
      another.saved_cell = {layout, x, y}
      layout.update
      @raw = Pointer(Void).null.as(LibGUI::Panel)
      # @saved_cell = nil
    end

    lib_setter(size)

    lib_function(update)
    lib_function(scroll_width)
    lib_function(scroll_height)

    # TODO
    # fun panel_data_imp(panel : Panel, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
    # fun panel_get_data_imp(panel : Panel) : Pointer(Void)
    # fun panel_layout(panel : Panel, layout : Layout) : UInt32
    # fun panel_get_layout(panel : Panel, index : UInt32) : Layout
    # fun panel_visible_layout(panel : Panel, index : UInt32)

  end
end
