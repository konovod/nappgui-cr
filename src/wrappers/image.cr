module GUI
  class Image
    @raw : LibGUI::Image

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end

    def self.from_file(filename : String) : Image?
      error = Pointer(Void).malloc(1)
      image = LibGUI.image_from_file(filename, error)
      image.null? ? nil : Image.new(image)
    end

    def self.from_pixels(width : UInt32, height : UInt32, format : PixFormat, data : UInt8*, palette : UInt32*? = nil, palsize : UInt32 = 0) : Image
      Image.new(LibGUI.image_from_pixels(width, height, format, data, palette, palsize))
    end

    def self.from_pixbuf(pixbuf : LibGUI::Pixbuf, palette : Void*? = nil) : Image
      Image.new(LibGUI.image_from_pixbuf(pixbuf, palette))
    end

    def self.from_data(data : UInt8*, size : UInt32) : Image
      Image.new(LibGUI.image_from_data(data, size))
    end

    def self.from_resource(pack : Void*, id : UInt32) : Image
      Image.new(LibGUI.image_from_resource(pack, id))
    end

    def self.from_stream(stream : Void*) : Image
      Image.new(LibGUI.image_read(stream))
    end

    def clone : Image
      Image.new(LibGUI.image_copy(@raw))
    end

    def trim(x : UInt32, y : UInt32, width : UInt32, height : UInt32) : Image
      Image.new(LibGUI.image_trim(@raw, x, y, width, height))
    end

    def rotate(angle : Float32, new_size : Bool = true, background : UInt32 = 0x00000000) : Image
      nsize : UInt8 = new_size ? 1_u8 : 0_u8
      Image.new(LibGUI.image_rotate(@raw, angle, nsize, background, nil))
    end

    def scale(nwidth : UInt32, nheight : UInt32) : Image
      Image.new(LibGUI.image_scale(@raw, nwidth, nheight))
    end

    def scale_to_width(nwidth : UInt32) : Image
      scale(nwidth, UInt32::MAX)
    end

    def scale_to_height(nheight : UInt32) : Image
      scale(UInt32::MAX, nheight)
    end

    def save(filename : String, codec : ImageCodec? = nil) : Bool
      if codec
        LibGUI.image_codec(@raw, codec)
      end
      error = Pointer(Void).malloc(1)
      LibGUI.image_to_file(@raw, filename, error) != 0
    end

    def write(stream : Void*, codec : ImageCodec? = nil)
      if codec
        LibGUI.image_codec(@raw, codec)
      end
      LibGUI.image_write(stream, @raw)
    end

    def format : PixelFormat
      PixelFormat.new(LibGUI.image_format(@raw))
    end

    def width : UInt32
      LibGUI.image_width(@raw)
    end

    def height : UInt32
      LibGUI.image_height(@raw)
    end

    def size : {UInt32, UInt32}
      {width, height}
    end

    def mem : UInt32
      LibGUI.image_mem(@raw)
    end

    def pixels(format : PixFormat = PixFormat::EkFIMAGE) : LibGUI::Pixbuf
      LibGUI.image_pixels(@raw, format)
    end

    def codec : ImageCodec
      ImageCodec.new(LibGUI.image_get_codec(@raw))
    end

    def num_frames : UInt32
      LibGUI.image_num_frames(@raw)
    end

    def native : Pointer(Void)
      LibGUI.image_native(@raw)
    end

    def finalize
      free
    end

    def free
      if @raw != Pointer(Void).null.as(LibGUI::Image)
        LibGUI.image_destroy(pointerof(@raw))
        @raw = Pointer(Void).null.as(LibGUI::Image)
      end
    end
  end
end
