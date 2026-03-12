module GUI
  class Slider < Widget
    @raw : LibGUI::Slider

    def initialize(*, vertical = false, **args)
      @raw = vertical ? LibGUI.slider_vertical : LibGUI.slider_create
      apply_args(**args)
    end

    define_place

    event(on_moved)
    lib_property(value, Float64)
    lib_setter(tooltip, String)
    lib_setter(steps, Int32)
    lib_setter(min_width)
  end
end
