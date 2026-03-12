module GUI
  class Progress < Widget
    define_standard_init
    define_place

    lib_setter(value, Float64)
    lib_setter(min_width)
    lib_function(undefined, running : Bool)
  end
end
