module GUI
  class Button < Widget
    enum Style
      Push
      Check
      Check3
      Radio
      Flat
      FlatGLE
    end

    @raw : LibGUI::Button

    def initialize(style : Style, **args)
      @raw = case style
             in .push?
               LibGUI.button_push
             in .check?
               LibGUI.button_check
             in .check3?
               LibGUI.button_check3
             in .radio?
               LibGUI.button_radio
             in .flat?
               LibGUI.button_flat
             in .flat_gle?
               LibGUI.button_flatgle
             end
      apply_args(**args)
    end

    define_place

    lib_property(text, String)
    lib_setter(text_alt, String)
    lib_setter(tooltip, String)
    lib_property(font)
    lib_property(image)
    lib_property(image_alt)
    lib_property(state, State)
    lib_property(tag, Int32)
    event(on_click)
    lib_setter(min_width)
    lib_setter(hpadding)
    lib_setter(vpadding)

    lib_function_named(height, get_height)
  end
end
