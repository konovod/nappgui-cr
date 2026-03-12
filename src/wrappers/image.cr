module GUI
  class Image
    @raw : LibGUI::Image

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end
  end
end
