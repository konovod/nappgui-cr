module GUI
  class Window < Widget
    define_standard_init(flags)

    def place(layout : Layout, x : Int32, y : Int32)
      raise "Window cannot be placed to layout"
    end

    event(on_close)
    event(on_moved)
    event(on_resize)

    lib_setter(title, String)
    lib_property(origin)
    lib_setter(panel)
    lib_property(maximize)
    lib_property(minimize)
    lib_setter(client_size)

    lib_function(show)
    lib_function(hide)
    lib_function_named(visible?, get_visible)
    lib_function(update)

    def destroy
      LibGUI.window_destroy(pointerof(@raw))
    end

    # TODO
    # fun window_modal(window : Window, parent : Window) : UInt32
    # fun window_stop_modal(window : Window, return_value : UInt32)
    # fun window_hotkey(window : Window, key : VKeyT, modifiers : UInt32, listener : Listener)
    # fun window_clear_hotkeys(window : Window)
    # fun window_get_client_size(window : Window) : S2Df
    # fun window_defbutton(window : Window, button : Button)
    # fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Float32, hot_y : Float32)
    # fun window_overlay(window : Window, parent : Window)
    # fun window_cycle_tabstop(window : Window, cycle : Bool)
    # fun window_next_tabstop(window : Window) : GuiFocusT
    # fun window_previous_tabstop(window : Window) : GuiFocusT
    # fun window_focus(window : Window, control : GuiControl) : GuiFocusT
    # fun window_get_focus(window : Window) : GuiControl
    # fun window_focus_info(window : Window, info : FocusInfo)
    # fun window_get_size(window : Window) : S2Df
    # fun window_control_frame(window : Window, control : GuiControl) : R2Df
    # fun window_client_to_screen(window : Window, point : V2Df) : V2Df
    # fun window_imp(window : Window) : Pointer(Void)

  end
end
