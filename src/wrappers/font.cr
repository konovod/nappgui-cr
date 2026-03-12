module GUI
  class Font
    @raw : LibGUI::Font

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end

    def initialize(size : Int32, style : FontStyle = FontStyle::Normal, size_mode : FontSizeMode = FontSizeMode::Pixels)
      @raw = LibGUI.font_system(size, style.to_unsafe | size_mode.to_unsafe)
    end

    def self.new(*, pixels : Int32, style : FontStyle = FontStyle::Normal)
      self.new(pixels, style, FontSizeMode::Pixels)
    end

    def self.new(*, cell : Int32, style : FontStyle = FontStyle::Normal)
      self.new(cell, style, FontSizeMode::Cell)
    end

    def self.new(*, points : Int32, style : FontStyle = FontStyle::Normal)
      self.new(points, style, FontSizeMode::Points)
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
