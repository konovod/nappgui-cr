module GUI
  class Label < Widget
    define_standard_init
    define_place

    lib_property(text, String)
    lib_property(font)
    event(on_click)
    lib_setter(style_over, FontStyle)
    lib_setter(align, Align)
    lib_setter(color, Color)
    lib_setter(color_over, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_over, Color)

    lib_setter(size_text, String)
    lib_setter(multiline)
    lib_setter(trim, Ellipsis)
    lib_setter(min_width)
  end
end
