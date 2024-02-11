@[Link("#{__DIR__}/../../core")]
lib LibGUI
  fun dbind_imp(type : CharT*, size : UInt16, mname : CharT*, mtype : CharT*, moffset : UInt16, msize : UInt16)
  alias CharT = LibC::Char
  fun dbind_enum_imp(type : CharT*, name : CharT*, value : EnumT, alias : CharT*)
  enum X_EnumT
    EkEnumGenericValue = 0
  end
  type EnumT = X_EnumT
  fun dbind_create_imp(type : CharT*) : ByteT*
  alias ByteT = UInt8
  fun dbind_init_imp(data : ByteT*, type : CharT*)
  fun dbind_remove_imp(data : ByteT*, type : CharT*)
  fun dbind_destroy_imp(data : ByteT**, type : CharT*)
  fun dbind_destopt_imp(data : ByteT**, type : CharT*)
  fun dbind_read_imp(stm : Stream, type : CharT*) : Void*
  type Stream = Void*
  fun dbind_write_imp(stm : Stream, data : Void*, type : CharT*)
  fun dbind_default_imp(type : CharT*, mname : CharT*, value : Void*)
  fun dbind_range_imp(type : CharT*, mname : CharT*, min : Void*, max : Void*)
  fun dbind_precision_imp(type : CharT*, mname : CharT*, prec : Void*)
  fun dbind_increment_imp(type : CharT*, mname : CharT*, incr : Void*)
  fun dbind_suffix_imp(type : CharT*, mname : CharT*, suffix : CharT*)
  fun listener_imp(object : Void*, func_event_handler : FPtrEventHandler) : Listener
  type Event = Void*
  alias FPtrEventHandler = (Void*, Event -> Void)
  type Listener = Void*
  fun listener_destroy(listener : Listener*)
  fun listener_update(listener : Listener*, new_listener : Listener)
  fun listener_event_imp(listener : Listener, type : UInt32, sender : Void*, params : Void*, result : Void*, sender_type : CharT*, params_type : CharT*, result_type : CharT*)
  fun listener_pass_event_imp(listener : Listener, event : Event, sender : Void*, sender_type : CharT*)
  fun event_type(event : Event) : UInt32
  fun event_sender_imp(event : Event, type : CharT*) : Void*
  fun event_params_imp(event : Event, type : CharT*) : Void*
  fun event_result_imp(event : Event, type : CharT*) : Void*
  fun keybuf_create : KeyBuf
  type KeyBuf = Void*
  fun keybuf_destroy(buffer : KeyBuf*)
  fun keybuf_on_up = keybuf_OnUp(buffer : KeyBuf, key : VkeyT)
  enum X_KeyT
    EkKeyUndef = 0
    EkKeyA = 1
    EkKeyS = 2
    EkKeyD = 3
    EkKeyF = 4
    EkKeyH = 5
    EkKeyG = 6
    EkKeyZ = 7
    EkKeyX = 8
    EkKeyC = 9
    EkKeyV = 10
    EkKeyBslash = 11
    EkKeyB = 12
    EkKeyQ = 13
    EkKeyW = 14
    EkKeyE = 15
    EkKeyR = 16
    EkKeyY = 17
    EkKeyT = 18
    EkKey1 = 19
    EkKey2 = 20
    EkKey3 = 21
    EkKey4 = 22
    EkKey6 = 23
    EkKey5 = 24
    EkKey9 = 25
    EkKey7 = 26
    EkKey8 = 27
    EkKey0 = 28
    EkKeyRcurly = 29
    EkKeyO = 30
    EkKeyU = 31
    EkKeyLcurly = 32
    EkKeyI = 33
    EkKeyP = 34
    EkKeyReturn = 35
    EkKeyL = 36
    EkKeyJ = 37
    EkKeySemicolon = 38
    EkKeyK = 39
    EkKeyQuest = 40
    EkKeyComma = 41
    EkKeyMinus = 42
    EkKeyN = 43
    EkKeyM = 44
    EkKeyPeriod = 45
    EkKeyTab = 46
    EkKeySpace = 47
    EkKeyGtlt = 48
    EkKeyBack = 49
    EkKeyEscape = 50
    EkKeyF17 = 51
    EkKeyNumdecimal = 52
    EkKeyNummult = 53
    EkKeyNumadd = 54
    EkKeyNumlock = 55
    EkKeyNumdiv = 56
    EkKeyNumret = 57
    EkKeyNumminus = 58
    EkKeyF18 = 59
    EkKeyF19 = 60
    EkKeyNumequal = 61
    EkKeyNum0 = 62
    EkKeyNum1 = 63
    EkKeyNum2 = 64
    EkKeyNum3 = 65
    EkKeyNum4 = 66
    EkKeyNum5 = 67
    EkKeyNum6 = 68
    EkKeyNum7 = 69
    EkKeyNum8 = 70
    EkKeyNum9 = 71
    EkKeyF5 = 72
    EkKeyF6 = 73
    EkKeyF7 = 74
    EkKeyF3 = 75
    EkKeyF8 = 76
    EkKeyF9 = 77
    EkKeyF11 = 78
    EkKeyF13 = 79
    EkKeyF16 = 80
    EkKeyF14 = 81
    EkKeyF10 = 82
    EkKeyF12 = 83
    EkKeyF15 = 84
    EkKeyPageup = 85
    EkKeyHome = 86
    EkKeySupr = 87
    EkKeyF4 = 88
    EkKeyPagedown = 89
    EkKeyF2 = 90
    EkKeyEnd = 91
    EkKeyF1 = 92
    EkKeyLeft = 93
    EkKeyRight = 94
    EkKeyDown = 95
    EkKeyUp = 96
    EkKeyLshift = 97
    EkKeyRshift = 98
    EkKeyLctrl = 99
    EkKeyRctrl = 100
    EkKeyLalt = 101
    EkKeyRalt = 102
    EkKeyInsert = 103
    EkKeyExclam = 104
    EkKeyMenu = 105
    EkKeyLwin = 106
    EkKeyRwin = 107
    EkKeyCaps = 108
    EkKeyTilde = 109
    EkKeyGrave = 110
    EkKeyPlus = 111
  end
  type VkeyT = X_KeyT
  fun keybuf_on_down = keybuf_OnDown(buffer : KeyBuf, key : VkeyT)
  fun keybuf_clear(buffer : KeyBuf)
  fun keybuf_pressed(buffer : KeyBuf, key : VkeyT) : BoolT
  alias BoolT = LibC::Char
  fun keybuf_str(key : VkeyT) : CharT*
  fun keybuf_dump(buffer : KeyBuf)
  fun respack_destroy(pack : ResPack*)
  type ResPack = Void*
  fun respack_text(pack : ResPack, id : ResId) : CharT*
  alias ResId = CharT*
  fun respack_file(pack : ResPack, id : ResId, size : UInt32*) : ByteT*
  fun stm_from_block(data : ByteT*, size : UInt32) : Stream
  fun stm_memory(size : UInt32) : Stream
  fun stm_from_file(pathname : CharT*, error : FerrorT*) : Stream
  enum X_FerrorT
    EkFexists = 1
    EkFnopath = 2
    EkFnofile = 3
    EkFbigname = 4
    EkFnofiles = 5
    EkFnoempty = 6
    EkFnoaccess = 7
    EkFlock = 8
    EkFbig = 9
    EkFseekneg = 10
    EkFundef = 11
    EkFok = 12
  end
  type FerrorT = X_FerrorT
  fun stm_to_file(pathname : CharT*, error : FerrorT*) : Stream
  fun stm_append_file(pathname : CharT*, error : FerrorT*) : Stream
  fun stm_socket(socket : Socket) : Stream
  type Socket = Void*
  fun stm_close(stm : Stream*)
  fun stm_get_write_endian(stm : Stream) : EndianT
  enum X_EndianT
    EkLitend = 1
    EkBigend = 2
  end
  type EndianT = X_EndianT
  fun stm_get_read_endian(stm : Stream) : EndianT
  fun stm_set_write_endian(stm : Stream, endian : EndianT)
  fun stm_set_read_endian(stm : Stream, endian : EndianT)
  fun stm_get_write_utf(stm : Stream) : UnicodeT
  enum X_UnicodeT
    EkUtf8 = 0
    EkUtf16 = 1
    EkUtf32 = 2
  end
  type UnicodeT = X_UnicodeT
  fun stm_get_read_utf(stm : Stream) : UnicodeT
  fun stm_set_write_utf(stm : Stream, format : UnicodeT)
  fun stm_set_read_utf(stm : Stream, format : UnicodeT)
  fun stm_is_memory(stm : Stream) : BoolT
  fun stm_bytes_written(stm : Stream) : UInt64
  fun stm_bytes_readed(stm : Stream) : UInt64
  fun stm_col(stm : Stream) : UInt32
  fun stm_row(stm : Stream) : UInt32
  fun stm_token_col(stm : Stream) : UInt32
  fun stm_token_row(stm : Stream) : UInt32
  fun stm_token_lexeme(stm : Stream, size : UInt32*) : CharT*
  fun stm_token_escapes(stm : Stream, active_escapes : BoolT)
  fun stm_token_spaces(stm : Stream, active_spaces : BoolT)
  fun stm_token_comments(stm : Stream, active_comments : BoolT)
  fun stm_state(stm : Stream) : SstateT
  enum X_SstateT
    EkStok = 0
    EkStend = 1
    EkStcorrupt = 2
    EkStbroken = 3
  end
  type SstateT = X_SstateT
  fun stm_file_err(stm : Stream) : FerrorT
  fun stm_sock_err(stm : Stream) : SerrorT
  enum X_SerrorT
    EkSnonet = 1
    EkSnohost = 2
    EkStimeout = 3
    EkSstream = 4
    EkSundef = 5
    EkSok = 6
  end
  type SerrorT = X_SerrorT
  fun stm_corrupt(stm : Stream)
  fun stm_str(stm : Stream) : String*
  struct X_StringT
    size : UInt32
    data : LibC::Char[512]
  end
  type String = X_StringT
  fun stm_buffer(stm : Stream) : ByteT*
  fun stm_buffer_size(stm : Stream) : UInt32
  fun stm_write(stm : Stream, data : ByteT*, size : UInt32)
  fun stm_write_char(stm : Stream, codepoint : UInt32)
  fun stm_printf(stm : Stream, format : CharT*, ...) : UInt32
  fun stm_writef(stm : Stream, str : CharT*) : UInt32
  fun stm_write_bool(stm : Stream, value : BoolT)
  fun stm_write_i8(stm : Stream, value : Int8)
  fun stm_write_i16(stm : Stream, value : Int16)
  fun stm_write_i32(stm : Stream, value : Int32)
  fun stm_write_i64(stm : Stream, value : Int64)
  fun stm_write_u8(stm : Stream, value : UInt8)
  fun stm_write_u16(stm : Stream, value : UInt16)
  fun stm_write_u32(stm : Stream, value : UInt32)
  fun stm_write_u64(stm : Stream, value : UInt64)
  fun stm_write_r32(stm : Stream, value : Float32)
  fun stm_write_r64(stm : Stream, value : Float64)
  fun stm_read(stm : Stream, data : ByteT*, size : UInt32) : UInt32
  fun stm_read_char(stm : Stream) : UInt32
  fun stm_read_chars(stm : Stream, n : UInt32) : CharT*
  fun stm_read_line(stm : Stream) : CharT*
  fun stm_read_trim(stm : Stream) : CharT*
  fun stm_read_token(stm : Stream) : LtokenT
  enum X_TokenT
    EkTslcom = 1
    EkTmlcom = 2
    EkTspace = 3
    EkTeol = 4
    EkTless = 5
    EkTgreat = 6
    EkTcomma = 7
    EkTperiod = 8
    EkTscolon = 9
    EkTcolon = 10
    EkTopenpar = 11
    EkTclospar = 12
    EkTopenbrac = 13
    EkTclosbrac = 14
    EkTopencurl = 15
    EkTcloscurl = 16
    EkTplus = 17
    EkTminus = 18
    EkTasterk = 19
    EkTequals = 20
    EkTdollar = 21
    EkTpercent = 22
    EkTpound = 23
    EkTamper = 24
    EkTapost = 25
    EkTquote = 26
    EkTcircum = 27
    EkTtilde = 28
    EkTexcla = 29
    EkTquest = 30
    EkTvline = 31
    EkTslash = 32
    EkTbslash = 33
    EkTat = 34
    EkTinteger = 35
    EkToctal = 36
    EkThex = 37
    EkTreal = 38
    EkTstring = 39
    EkTident = 40
    EkTundef = 41
    EkTcorrup = 42
    EkTeof = 43
    EkTreserved = 44
  end
  type LtokenT = X_TokenT
  fun stm_read_i8_tok(stm : Stream) : Int8
  fun stm_read_i16_tok(stm : Stream) : Int16
  fun stm_read_i32_tok(stm : Stream) : Int32
  fun stm_read_i64_tok(stm : Stream) : Int64
  fun stm_read_u8_tok(stm : Stream) : UInt8
  fun stm_read_u16_tok(stm : Stream) : UInt16
  fun stm_read_u32_tok(stm : Stream) : UInt32
  fun stm_read_u64_tok(stm : Stream) : UInt64
  fun stm_read_r32_tok(stm : Stream) : Float32
  fun stm_read_r64_tok(stm : Stream) : Float64
  fun stm_read_bool(stm : Stream) : BoolT
  fun stm_read_i8(stm : Stream) : Int8
  fun stm_read_i16(stm : Stream) : Int16
  fun stm_read_i32(stm : Stream) : Int32
  fun stm_read_i64(stm : Stream) : Int64
  fun stm_read_u8(stm : Stream) : UInt8
  fun stm_read_u16(stm : Stream) : UInt16
  fun stm_read_u32(stm : Stream) : UInt32
  fun stm_read_u64(stm : Stream) : UInt64
  fun stm_read_r32(stm : Stream) : Float32
  fun stm_read_r64(stm : Stream) : Float64
  fun stm_skip(stm : Stream, size : UInt32)
  fun stm_skip_bom(stm : Stream)
  fun stm_skip_token(stm : Stream, token : LtokenT)
  fun stm_flush(stm : Stream)
  fun stm_pipe(from : Stream, to : Stream, n : UInt32)
end
