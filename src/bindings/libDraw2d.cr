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
  fun font_is_monospace(font : Font) : Bool
  fun font_style(font : Font) : FStyle
  fun font_units(font : Font) : UInt32
  fun font_extents(font : Font, text : CharT*, refwidth : Float32, width : Float32*, height : Float32*)
  fun font_exists_family(family : CharT*) : BoolT
  fun font_installed_families : ArrPtString*
  fun font_installed_monospace : ArrPtString*
  fun font_native(font : Font) : Void*
end
