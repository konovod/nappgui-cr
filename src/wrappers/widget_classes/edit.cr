module GUI
  class Edit < Widget
    @raw : LibGUI::Edit

    def initialize(*, multiline : Bool = false, **args)
      @raw = if multiline
               LibGUI.edit_multiline
             else
               LibGUI.edit_create
             end
      apply_args(**args)
    end

    define_place

    event(on_filter)
    event(on_change)
    event(on_focus)
    lib_property(text, String)
    lib_setter(font)
    lib_setter(align, Align)
    lib_setter(passmode, Bool)
    lib_setter(editable, Bool)
    lib_setter(autoselect, Bool)
    lib_setter(tooltip, String)
    lib_setter(color, Color)
    lib_setter(color_focus, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_focus, Color)
    lib_setter(phtext, String)
    lib_setter(phcolor, Color)
    lib_setter(phstyle, FontStyle)
    lib_setter(min_width)
    lib_setter(min_height)
    lib_setter(vpadding)

    lib_function(cut)
    lib_function(copy)
    lib_function(paste)
    lib_function_named(height, get_height)

    def select(start, aend)
      LibGUI.edit_select(self, start, aend)
    end
  end
end
