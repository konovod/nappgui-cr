@[Link("#{__DIR__}/../../draw2d")]
lib LibGUI
  enum FStyle : UInt32
    EkFNORMAL    =  0
    EkFBOLD      =  1
    EkFITALIC    =  2
    EkFSTRIKEOUT =  4
    EkFUNDERLINE =  8
    EkFSUBSCRIPT = 16
    EkFSUPSCRIPT = 32

    EkFPIXELS =   0
    EkFPOINTS =  64
    EkFCELL   = 128
  end

  fun font_create(family : CharT*, size : Float32, style : FStyle) : Font
  fun font_system(size : Float32, style : FStyle) : Font
  fun font_monospace(size : Float32, style : FStyle) : Font
  fun font_with_style(font : Font, style : FStyle) : Font
  fun font_with_width(font : Font, width : Float32) : Font
  fun font_with_xscale(font : Font, xscale : Float32) : Font
  fun font_copy(font : Font) : Font
  fun font_destroy(font : Font*)
  fun font_equals(font1 : Font, font2 : Font) : BoolT
  fun font_regular_size : Float32
  fun font_small_size : Float32
  fun font_mini_size : Float32
  fun font_family(font : Font) : CharT*
  fun font_size(font : Font) : Float32
  fun font_height(font : Font) : Float32
  fun font_width(font : Font) : Float32
  fun font_xscale(font : Font) : Float32
  fun font_ascent(font : Font) : Float32
  fun font_descent(font : Font) : Float32
  fun font_leading(font : Font) : Float32
  fun font_is_monospace(font : Font) : BoolT
  fun font_style(font : Font) : FStyle
  fun font_units(font : Font) : FStyle
  fun font_extents(font : Font, text : CharT*, refwidth : Float32, width : Float32*, height : Float32*)
  fun font_exists_family(family : CharT*) : BoolT
  fun font_installed_families : ArrPtString*
  fun font_installed_monospace : ArrPtString*
  fun font_native(font : Font) : Void*

  fun image_from_file(filename : CharT*, error : Void*) : Image
  fun image_from_pixels(width : UInt32, height : UInt32, format : PixFormat, data : UInt8*, palette : UInt32*, palsize : UInt32) : Image
  fun image_from_pixbuf(pixbuf : Pixbuf, palette : Void*) : Image
  fun image_from_data(data : UInt8*, size : UInt32) : Image
  fun image_from_resource(pack : Void*, id : UInt32) : Image
  fun image_copy(image : Image) : Image
  fun image_trim(image : Image, x : UInt32, y : UInt32, width : UInt32, height : UInt32) : Image
  fun image_rotate(image : Image, angle : Float32, nsize : BoolT, background : UInt32, t2d : Void*) : Image
  fun image_scale(image : Image, nwidth : UInt32, nheight : UInt32) : Image
  fun image_read(stm : Void*) : Image
  fun image_to_file(image : Image, filename : CharT*, error : Void*) : BoolT
  fun image_write(stm : Void*, image : Image)
  fun image_destroy(image : Image*)
  fun image_format(image : Image) : PixFormat
  fun image_width(image : Image) : UInt32
  fun image_height(image : Image) : UInt32
  fun image_mem(image : Image) : UInt32
  fun image_pixels(image : Image, format : PixFormat) : Pixbuf
  fun image_codec(image : Image, codec : Codec) : BoolT
  fun image_get_codec(image : Image) : Codec
  fun image_num_frames(image : Image) : UInt32
  fun image_data(image : Image, data : Void*, func_destroy : Void*, typ : Void*)
  fun image_get_data(image : Image, typ : Void*) : Void*
  fun image_native(image : Image) : Void*

  type Pixbuf = Void*

  enum PixFormat : UInt8
    EkFIMAGE = 0
    EkGRAY8  = 1
    EkRGB24  = 2
    EkRGBA32 = 3
    EkINDEX1 = 4
    EkINDEX2 = 5
    EkINDEX4 = 6
    EkINDEX8 = 7
  end

  enum Codec : UInt8
    EkJPG = 0
    EkPNG = 1
    EkBMP = 2
    EkGIF = 3
  end
end
