module GUI
  class Font
    @raw : LibGUI::Font

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end

    def finalize
      if @raw != Pointer(Void).null.as(LibGUI::Font)
        LibGUI.font_destroy(pointerof(@raw))
      end
    end
  end
end
