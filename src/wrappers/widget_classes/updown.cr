module GUI
  class UpDown < Widget
    define_standard_init
    define_place

    event(on_click)
    lib_setter(tooltip, String)
  end
end
