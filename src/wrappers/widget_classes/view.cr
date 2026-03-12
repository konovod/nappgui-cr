module GUI
  class View < Widget
    def initialize(scroll : Bool, border : Bool, **args)
      @raw = LibGUI.view_custom(scroll, border)
      apply_args(**args)
    end

    def initialize(scroll : Bool, **args)
      @raw = if scroll
               LibGUI.view_scroll
             else
               LibGUI.view_create
             end
      apply_args(**args)
    end

    define_standard_init
    define_place

    event(on_draw)
    event(on_overlay)
    event(on_size)
    event(on_enter)
    event(on_exit)
    event(on_move)
    event(on_down)
    event(on_up)
    event(on_click)
    event(on_drag)
    event(on_wheel)
    event(on_key_down)
    event(on_key_up)
    event(on_focus)
    event(on_resign_focus)
    event(on_accept_focus)
    event(on_scroll)

    lib_setter(size)
    lib_setter(allow_tab)
    lib_setter(keybuf)

    lib_function(update)
    lib_function(native)
    lib_function(scroll_x, pos : Float32)
    lib_function(scroll_y, pos : Float32)
    lib_function(scroll_visible, horizontal : Bool, vertical : Bool)

    # TODO
    # fun view_data_imp(view : View, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
    # fun view_get_data_imp(view : View) : Pointer(Void)
    # fun view_get_size(view : View, size : Pointer(S2Df))
    # fun view_content_size(view : View, size : S2Df, line : S2Df)
    # fun view_scroll_size(view : View, width : Pointer(Float32), height : Pointer(Float32))
    # fun view_viewport(view : View, pos : Pointer(V2Df), size : Pointer(S2Df))
    # fun view_point_scale(view : View, scale : Pointer(Float32))
  end
end
