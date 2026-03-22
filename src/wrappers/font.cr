module GUI
  class Font
    @raw : LibGUI::Font

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end

    def initialize(size : Float32, style : FontStyle = FontStyle::Normal, size_mode : FontSizeMode = FontSizeMode::Pixels)
      @raw = LibGUI.font_system(size, style.to_unsafe | size_mode.to_unsafe)
    end

    def initialize(family : String, size : Float32, style : FontStyle = FontStyle::Normal, size_mode : FontSizeMode = FontSizeMode::Pixels)
      @raw = LibGUI.font_create(family, size, style.to_unsafe | size_mode.to_unsafe)
    end

    def self.new
      self.new(self.regular_size)
    end

    def self.new(*, pixels : Float32, style : FontStyle = FontStyle::Normal)
      self.new(pixels, style, FontSizeMode::Pixels)
    end

    def self.new(*, cell : Float32, style : FontStyle = FontStyle::Normal)
      self.new(cell, style, FontSizeMode::Cell)
    end

    def self.new(*, points : Float32, style : FontStyle = FontStyle::Normal)
      self.new(points, style, FontSizeMode::Points)
    end

    def self.new(family : String, *, pixels : Float32, style : FontStyle = FontStyle::Normal)
      self.new(family, pixels, style, FontSizeMode::Pixels)
    end

    def self.new(family : String, *, cell : Float32, style : FontStyle = FontStyle::Normal)
      self.new(family, cell, style, FontSizeMode::Cell)
    end

    def self.new(family : String, *, points : Float32, style : FontStyle = FontStyle::Normal)
      self.new(family, points, style, FontSizeMode::Points)
    end

    def self.regular_size : Float32
      LibGUI.font_regular_size
    end

    def self.small_size : Float32
      LibGUI.font_small_size
    end

    def self.mini_size : Float32
      LibGUI.font_mini_size
    end

    def self.exists_family(family : String) : Bool
      LibGUI.font_exists_family(family) != 0
    end

    def self.installed_families : Array(String)
      ptr = LibGUI.font_installed_families
      return [] of String if ptr.null?
      arr = ptr.value
      len = arr.size
      result = Array(String).new(len)
      if len > 0
        data_ptr = arr.content.value.unsafe_as(StaticArray(Pointer(LibGUI::String), 1024))
        len.times do |i|
          str_ptr = data_ptr[i]
          unless str_ptr.null?
            result << String.new(str_ptr.value.data.to_slice.to_unsafe, str_ptr.value.size - 1)
          end
        end
      end
      result
    end

    def self.installed_monospace : Array(String)
      ptr = LibGUI.font_installed_monospace
      return [] of String if ptr.null?
      arr = ptr.value
      len = arr.size
      result = Array(String).new(len)
      if len > 0
        data_ptr = arr.content.value.unsafe_as(StaticArray(Pointer(LibGUI::String), 1024))
        len.times do |i|
          str_ptr = data_ptr[i]
          unless str_ptr.null?
            result << String.new(str_ptr.value.data.to_slice.to_unsafe, str_ptr.value.size - 1)
          end
        end
      end
      result
    end

    def self.monospace(size : Int32, style : FontStyle = FontStyle::Normal, size_mode : FontSizeMode = FontSizeMode::Pixels) : Font
      Font.new(LibGUI.font_monospace(size, style.to_unsafe | size_mode.to_unsafe))
    end

    def with_style(style : FontStyle) : Font
      Font.new(LibGUI.font_with_style(@raw, style.to_unsafe))
    end

    def with_width(width : Float32) : Font
      Font.new(LibGUI.font_with_width(@raw, width))
    end

    def with_xscale(xscale : Float32) : Font
      Font.new(LibGUI.font_with_xscale(@raw, xscale))
    end

    def clone : Font
      Font.new(LibGUI.font_copy(@raw))
    end

    def ==(other : Font) : Bool
      LibGUI.font_equals(@raw, other.@raw) != 0
    end

    def family : String
      String.new(LibGUI.font_family(@raw))
    end

    def size : Float32
      LibGUI.font_size(@raw)
    end

    def height : Float32
      LibGUI.font_height(@raw)
    end

    def width : Float32
      LibGUI.font_width(@raw)
    end

    def xscale : Float32
      LibGUI.font_xscale(@raw)
    end

    def ascent : Float32
      LibGUI.font_ascent(@raw)
    end

    def descent : Float32
      LibGUI.font_descent(@raw)
    end

    def leading : Float32
      LibGUI.font_leading(@raw)
    end

    def monospace? : Bool
      LibGUI.font_is_monospace(@raw) != 0
    end

    def style : FontStyle
      FontStyle.new(LibGUI.font_style(@raw)) & FontStyle.new(31)
    end

    def units : FontSizeMode
      FontSizeMode.new(LibGUI.font_units(@raw))
    end

    def extents(text : String, refwidth : Float32 = -1.0) : Tuple(Float32, Float32)
      LibGUI.font_extents(@raw, text, refwidth, out width, out height)
      {width, height}
    end

    def native_handle : Pointer(Void)
      LibGUI.font_native(@raw)
    end

    def finalize
      free
    end

    def free
      if @raw != Pointer(Void).null.as(LibGUI::Font)
        LibGUI.font_destroy(pointerof(@raw))
        @raw = Pointer(Void).null.as(LibGUI::Font)
      end
    end
  end
end
