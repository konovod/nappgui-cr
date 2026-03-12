module GUI
  class ImageView < Widget
    define_standard_init
    define_place
    event(on_click)
    event(on_over_draw)
    lib_setter(size)
    lib_setter(scale)
    lib_property(image, Image)
  end
end
