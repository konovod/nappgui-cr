module GUI
  class TextView < Widget
    define_standard_init
    define_place

    event(on_filter)
    event(on_focus)

    lib_setter(size)
    lib_setter(units, Int32)
    lib_setter(family, String)
    lib_setter(fsize, Float32)
    lib_setter(fstyle, FontStyle)
    lib_setter(color, Color)
    lib_setter(bgcolor, Color)
    lib_setter(pgcolor, Color)
    lib_setter(halign, Align)

    lib_setter(lspacing, Float32)
    lib_setter(bfspace, Float32)
    lib_setter(afspace, Float32)
    lib_setter(editable, Bool)
    lib_setter(wrap, Bool)
    lib_setter(show_select, Bool)

    lib_function_named(write, writef, text : String)
    lib_function(clear)
    lib_function(cut)
    lib_function(copy)
    lib_function(paste)
    lib_function(del_select)
    lib_function(scroll_caret)
    lib_function(apply_all)
    lib_function(apply_select)
    lib_function(scroll_visible, horizontal : Bool, vertical : Bool)
    lib_function_named(text, get_text)
    lib_function_named(write_at_cursor, cpos_writef, text : String)

    def select(start, aend)
      LibGUI.textview_select(self, start, aend)
    end

    # TODO
    # fun textview_rtf(view : TextView, rtf_in : Pointer(Stream))
  end
end
