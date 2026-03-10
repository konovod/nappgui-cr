@[Link("#{__DIR__}/../../gui")]
lib LibGUI
  type GuiControl = Void*
  type Button = Void*
  type Font = Void*
  type Image = Void*
  type Cell = Void*
  type Layout = Void*
  type Combo = Void*
  type Window = Void*
  type Edit = Void*
  type WebView = Void*
  type Label = Void*
  type PopUp = Void*
  type ListBox = Void*
  type UpDown = Void*
  type Slider = Void*
  type Progress = Void*
  type View = Void*
  type TextView = Void*
  type TableView = Void*
  type SplitView = Void*
  type Panel = Void*
  type Menu = Void*
  type MenuItem = Void*
  type FocusInfo = Void*
  type ImageView = Void*

  alias ColorT = UInt32
  alias FPtrRespack = (CharT* -> ResPack)
  alias FPtrDestroy = (Void** -> Void)

  enum GuiStateT
    EkGuiOff   = 0
    EkGuiOn    = 1
    EkGuiMixed = 2
  end
  enum AlignT
    EkLeft    = 1
    EkTop     = 1
    EkCenter  = 2
    EkRight   = 3
    EkBottom  = 3
    EkJustify = 4
  end

  enum DeviceT
    EkDesktop = 1
    EkPhone   = 2
    EkTablet  = 3
  end

  enum GuiScaleT
    EkGuiScaleAuto     = 1
    EkGuiScaleNone     = 2
    EkGuiScaleAspect   = 3
    EkGuiScaleAspectdw = 4
  end

  enum EllipsisT
    EkELLIPNONE   = 1
    EkELLIPBEGIN  = 2
    EkELLIPMIDDLE = 3
    EkELLIPEND    = 4
    EkELLIPMLINE  = 5
  end

  enum GuiCursorT
    EkGuiCursorArrow  = 1
    EkGuiCursorHand   = 2
    EkGuiCursorIbeam  = 3
    EkGuiCursorCross  = 4
    EkGuiCursorSizewe = 5
    EkGuiCursorSizens = 6
    EkGuiCursorUser   = 7
  end

  enum VKeyT
    EkKEY_UNDEF      =   0
    EkKEY_A          =   1
    EkKEY_S          =   2
    EkKEY_D          =   3
    EkKEY_F          =   4
    EkKEY_H          =   5
    EkKEY_G          =   6
    EkKEY_Z          =   7
    EkKEY_X          =   8
    EkKEY_C          =   9
    EkKEY_V          =  10
    EkKEY_BSLASH     =  11
    EkKEY_B          =  12
    EkKEY_Q          =  13
    EkKEY_W          =  14
    EkKEY_E          =  15
    EkKEY_R          =  16
    EkKEY_Y          =  17
    EkKEY_T          =  18
    EkKEY_1          =  19
    EkKEY_2          =  20
    EkKEY_3          =  21
    EkKEY_4          =  22
    EkKEY_6          =  23
    EkKEY_5          =  24
    EkKEY_9          =  25
    EkKEY_7          =  26
    EkKEY_8          =  27
    EkKEY_0          =  28
    EkKEY_RCURLY     =  29
    EkKEY_O          =  30
    EkKEY_U          =  31
    EkKEY_LCURLY     =  32
    EkKEY_I          =  33
    EkKEY_P          =  34
    EkKEY_RETURN     =  35
    EkKEY_L          =  36
    EkKEY_J          =  37
    EkKEY_SEMICOLON  =  38
    EkKEY_K          =  39
    EkKEY_QUEST      =  40
    EkKEY_COMMA      =  41
    EkKEY_MINUS      =  42
    EkKEY_N          =  43
    EkKEY_M          =  44
    EkKEY_PERIOD     =  45
    EkKEY_TAB        =  46
    EkKEY_SPACE      =  47
    EkKEY_GTLT       =  48
    EkKEY_BACK       =  49
    EkKEY_ESCAPE     =  50
    EkKEY_F17        =  51
    EkKEY_NUMDECIMAL =  52
    EkKEY_NUMMULT    =  53
    EkKEY_NUMADD     =  54
    EkKEY_NUMLOCK    =  55
    EkKEY_NUMDIV     =  56
    EkKEY_NUMRET     =  57
    EkKEY_NUMMINUS   =  58
    EkKEY_F18        =  59
    EkKEY_F19        =  60
    EkKEY_NUMEQUAL   =  61
    EkKEY_NUM0       =  62
    EkKEY_NUM1       =  63
    EkKEY_NUM2       =  64
    EkKEY_NUM3       =  65
    EkKEY_NUM4       =  66
    EkKEY_NUM5       =  67
    EkKEY_NUM6       =  68
    EkKEY_NUM7       =  69
    EkKEY_NUM8       =  70
    EkKEY_NUM9       =  71
    EkKEY_F5         =  72
    EkKEY_F6         =  73
    EkKEY_F7         =  74
    EkKEY_F3         =  75
    EkKEY_F8         =  76
    EkKEY_F9         =  77
    EkKEY_F11        =  78
    EkKEY_F13        =  79
    EkKEY_F16        =  80
    EkKEY_F14        =  81
    EkKEY_F10        =  82
    EkKEY_F12        =  83
    EkKEY_F15        =  84
    EkKEY_PAGEUP     =  85
    EkKEY_HOME       =  86
    EkKEY_SUPR       =  87
    EkKEY_F4         =  88
    EkKEY_PAGEDOWN   =  89
    EkKEY_F2         =  90
    EkKEY_END        =  91
    EkKEY_F1         =  92
    EkKEY_LEFT       =  93
    EkKEY_RIGHT      =  94
    EkKEY_DOWN       =  95
    EkKEY_UP         =  96
    EkKEY_LSHIFT     =  97
    EkKEY_RSHIFT     =  98
    EkKEY_LCTRL      =  99
    EkKEY_RCTRL      = 100
    EkKEY_LALT       = 101
    EkKEY_RALT       = 102
    EkKEY_INSERT     = 103
    EkKEY_EXCLAM     = 104
    EkKEY_MENU       = 105
    EkKEY_LWIN       = 106
    EkKEY_RWIN       = 107
    EkKEY_CAPS       = 108
    EkKEY_TILDE      = 109
    EkKEY_GRAVE      = 110
    EkKEY_PLUS       = 111
  end

  @[Flags]
  enum WindowFlag : UInt32
    EkWINDOW_FLAG         = 0
    EkWINDOW_EDGE         = 1 << 0
    EkWINDOW_TITLE        = 1 << 1
    EkWINDOW_MAX          = 1 << 2
    EkWINDOW_MIN          = 1 << 3
    EkWINDOW_CLOSE        = 1 << 4
    EkWINDOW_RESIZE       = 1 << 5
    EkWINDOW_RETURN       = 1 << 6
    EkWINDOW_ESC          = 1 << 7
    EkWINDOW_OFFSCREEN    = 1 << 8
    EkWINDOW_MODAL_NOHIDE = 1 << 9
    EkWINDOW_STD          = EkWINDOW_TITLE | EkWINDOW_MIN | EkWINDOW_CLOSE
    EkWINDOW_STDRES       = EkWINDOW_STD | EkWINDOW_MAX | EkWINDOW_RESIZE
  end

  enum SplitModeT
    EkSPLIT_NORMAL = 1
    EkSPLIT_FIXED0
    EkSPLIT_FIXED1
  end

  enum GuiFocusT
    EkGUI_FOCUS_CHANGED   = 1
    EkGUI_FOCUS_KEEP
    EkGUI_FOCUS_NO_NEXT
    EkGUI_FOCUS_NO_RESIGN
    EkGUI_FOCUS_NO_ACCEPT
  end

  enum GuiOrientT
    EkGuiHorizontal = 1
    EkGuiVertical   = 2
  end

  struct S2Df
    width : Float32
    height : Float32
  end

  struct V2Df
    x : Float32
    y : Float32
  end

  struct R2Df
    pos : V2Df
    size : S2Df
  end

  struct ArrPtString
    reserved : UInt32
    size : UInt32
    elem_sizeof : UInt16
    content : Pointer(StringPtData)
  end

  struct StringPtData
    elem : StaticArray(Pointer(String), 1024)
  end

  struct ArrStUInt32
    reserved : UInt32
    size : UInt32
    elem_sizeof : UInt16
    content : UInt32Data*
  end

  struct UInt32Data
    elem : UInt32[1024]
  end

  fun button_push : Button
  fun button_check : Button
  fun button_check3 : Button
  fun button_radio : Button
  fun button_flat : Button
  fun button_flatgle : Button
  fun button_on_click = button_OnClick(button : Button, listener : Listener)
  fun button_min_width(button : Button, width : Float32)
  fun button_text(button : Button, text : Pointer(UInt8))
  fun button_text_alt(button : Button, text : Pointer(UInt8))
  fun button_tooltip(button : Button, text : Pointer(UInt8))
  fun button_font(button : Button, font : Font)
  fun button_image(button : Button, image : Image)
  fun button_image_alt(button : Button, image : Image)
  fun button_state(button : Button, state : GuiStateT)
  fun button_tag(button : Button, tag : UInt32)
  fun button_hpadding(button : Button, padding : Float32)
  fun button_vpadding(button : Button, padding : Float32)
  fun button_get_state(button : Button) : GuiStateT
  fun button_get_text(button : Button) : Pointer(UInt8)
  fun button_get_font(button : Button) : Font
  fun button_get_image(button : Button) : Image
  fun button_get_image_alt(button : Button) : Image
  fun button_get_tag(button : Button) : UInt32
  fun button_get_height(button : Button) : Float32
  fun cell_empty(cell : Cell) : Bool
  fun cell_control(cell : Cell) : GuiControl
  fun cell_label(cell : Cell) : Label
  fun cell_button(cell : Cell) : Button
  fun cell_popup(cell : Cell) : PopUp
  fun cell_edit(cell : Cell) : Edit
  fun cell_combo(cell : Cell) : Combo
  fun cell_listbox(cell : Cell) : ListBox
  fun cell_updown(cell : Cell) : UpDown
  fun cell_slider(cell : Cell) : Slider
  fun cell_progress(cell : Cell) : Progress
  fun cell_view(cell : Cell) : View
  fun cell_textview(cell : Cell) : TextView
  fun cell_webview(cell : Cell) : WebView
  fun cell_imageview(cell : Cell) : ImageView
  fun cell_tableview(cell : Cell) : TableView
  fun cell_splitview(cell : Cell) : SplitView
  fun cell_panel(cell : Cell) : Panel
  fun cell_layout(cell : Cell) : Layout
  fun cell_enabled(cell : Cell, enabled : Bool)
  fun cell_visible(cell : Cell, visible : Bool)
  fun cell_padding(cell : Cell, pall : Float32)
  fun cell_padding2(cell : Cell, ptb : Float32, plr : Float32)
  fun cell_padding4(cell : Cell, pt : Float32, pr : Float32, pb : Float32, pl : Float32)
  fun cell_dbind_imp(cell : Cell, type : Pointer(UInt8), size : UInt16, mname : Pointer(UInt8), mtype : Pointer(UInt8), moffset : UInt16, msize : UInt16)
  fun combo_create : Combo
  fun combo_on_filter = combo_OnFilter(combo : Combo, listener : Listener)
  fun combo_on_change = combo_OnChange(combo : Combo, listener : Listener)
  fun combo_on_focus = combo_OnFocus(combo : Combo, listener : Listener)
  fun combo_on_select = combo_OnSelect(combo : Combo, listener : Listener)
  fun combo_min_width(combo : Combo, width : Float32)
  fun combo_text(combo : Combo, text : Pointer(UInt8))
  fun combo_align(combo : Combo, align : AlignT)
  fun combo_passmode(combo : Combo, passmode : Bool)
  fun combo_editable(combo : Combo, is_editable : Bool)
  fun combo_autoselect(combo : Combo, autoselect : Bool)
  fun combo_select(combo : Combo, start : Int32, _end : Int32)
  fun combo_tooltip(combo : Combo, text : Pointer(UInt8))
  fun combo_color(combo : Combo, color : ColorT)
  fun combo_color_focus(combo : Combo, color : ColorT)
  fun combo_bgcolor(combo : Combo, color : ColorT)
  fun combo_bgcolor_focus(combo : Combo, color : ColorT)
  fun combo_phtext(combo : Combo, text : Pointer(UInt8))
  fun combo_phcolor(combo : Combo, color : ColorT)
  fun combo_phstyle(combo : Combo, fstyle : UInt32)
  fun combo_copy(combo : Combo)
  fun combo_cut(combo : Combo)
  fun combo_paste(combo : Combo)
  fun combo_add_elem(combo : Combo, text : Pointer(UInt8), image : Image)
  fun combo_set_elem(combo : Combo, index : UInt32, text : Pointer(UInt8), image : Image)
  fun combo_ins_elem(combo : Combo, index : UInt32, text : Pointer(UInt8), image : Image)
  fun combo_del_elem(combo : Combo, index : UInt32)
  fun combo_clear(combo : Combo)
  fun combo_count(combo : Combo) : UInt32
  fun combo_list_height(combo : Combo, elems : UInt32)
  fun combo_selected(combo : Combo, index : UInt32)
  fun combo_get_selected(combo : Combo) : UInt32
  fun combo_get_text(combo : Combo, index : UInt32) : Pointer(UInt8)
  fun combo_get_image(combo : Combo, index : UInt32) : Image
  fun comwin_select_dir(parent : Window, caption : Pointer(UInt8), start_dir : Pointer(UInt8)) : Pointer(UInt8)
  fun comwin_open_file(parent : Window, caption : Pointer(UInt8), ftypes : Pointer(Pointer(UInt8)), size : UInt32, start_dir : Pointer(UInt8), filename : Pointer(UInt8)) : Pointer(UInt8)
  fun comwin_save_file(parent : Window, caption : Pointer(UInt8), ftypes : Pointer(Pointer(UInt8)), size : UInt32, start_dir : Pointer(UInt8), filename : Pointer(UInt8)) : Pointer(UInt8)
  fun comwin_color(parent : Window, caption : Pointer(UInt8), x : Float32, y : Float32, halign : AlignT, valign : AlignT, current : ColorT, colors : Pointer(ColorT), n : UInt32, on_change : Listener)
  fun edit_create : Edit
  fun edit_multiline : Edit
  fun edit_on_filter = edit_OnFilter(edit : Edit, listener : Listener)
  fun edit_on_change = edit_OnChange(edit : Edit, listener : Listener)
  fun edit_on_focus = edit_OnFocus(edit : Edit, listener : Listener)
  fun edit_min_width(edit : Edit, width : Float32)
  fun edit_min_height(edit : Edit, height : Float32)
  fun edit_text(edit : Edit, text : Pointer(UInt8))
  fun edit_font(edit : Edit, font : Font)
  fun edit_align(edit : Edit, align : AlignT)
  fun edit_passmode(edit : Edit, passmode : Bool)
  fun edit_editable(edit : Edit, is_editable : Bool)
  fun edit_autoselect(edit : Edit, autoselect : Bool)
  fun edit_select(edit : Edit, start : Int32, _end : Int32)
  fun edit_tooltip(edit : Edit, text : Pointer(UInt8))
  fun edit_color(edit : Edit, color : ColorT)
  fun edit_color_focus(edit : Edit, color : ColorT)
  fun edit_bgcolor(edit : Edit, color : ColorT)
  fun edit_bgcolor_focus(edit : Edit, color : ColorT)
  fun edit_phtext(edit : Edit, text : Pointer(UInt8))
  fun edit_phcolor(edit : Edit, color : ColorT)
  fun edit_phstyle(edit : Edit, fstyle : UInt32)
  fun edit_vpadding(edit : Edit, padding : Float32)
  fun edit_copy(edit : Edit)
  fun edit_cut(edit : Edit)
  fun edit_paste(edit : Edit)
  fun edit_get_text(edit : Edit) : Pointer(UInt8)
  fun edit_get_height(edit : Edit) : Float32
  fun globals_device : DeviceT
  fun globals_resolution(resolution : Pointer(S2Df))
  fun globals_mouse_position : V2Df
  fun gui_start
  fun gui_finish
  fun gui_respack(func_respack : FPtrRespack)
  fun gui_language(lang : Pointer(UInt8))
  fun gui_text(id : ResId) : Pointer(UInt8)
  fun gui_image(id : ResId) : Image
  fun gui_file(id : ResId, size : Pointer(UInt32)) : Pointer(UInt8)
  fun gui_dark_mode : Bool
  fun gui_alt_color(light_color : ColorT, dark_color : ColorT) : ColorT
  fun gui_label_color : ColorT
  fun gui_view_color : ColorT
  fun gui_line_color : ColorT
  fun gui_link_color : ColorT
  fun gui_border_color : ColorT
  fun gui_resolution : S2Df
  fun gui_mouse_pos : V2Df
  fun gui_update
  fun gui_on_theme_changed = gui_OnThemeChanged(listener : Listener)
  fun gui_update_transitions(prtime : Float64, crtime : Float64)
  fun gui_on_notification = gui_OnNotification(listener : Listener)
  fun gui_on_idle = gui_OnIdle(listener : Listener)
  fun gui_info_window(fatal : Bool, msg : Pointer(UInt8), caption : Pointer(UInt8), detail : Pointer(UInt8), file : Pointer(UInt8), line : UInt32, buttons : Pointer(ArrPtString), defindex : UInt32) : UInt32
  fun evbind_object_imp(e : Pointer(Event), type : Pointer(UInt8)) : Pointer(Void)
  fun evbind_modify_imp(e : Pointer(Event), type : Pointer(UInt8), size : UInt16, mname : Pointer(UInt8), mtype : Pointer(UInt8), moffset : UInt16, msize : UInt16) : Bool
  fun imageview_create : ImageView
  fun imageview_size(view : ImageView, size : S2Df)
  fun imageview_scale(view : ImageView, scale : GuiScaleT)
  fun imageview_image(view : ImageView, image : Image)
  fun imageview_on_click = imageview_OnClick(view : ImageView, listener : Listener)
  fun imageview_on_over_draw = imageview_OnOverDraw(view : ImageView, listener : Listener)
  fun imageview_get_image(view : ImageView) : Image
  fun label_create : Label
  fun label_on_click = label_OnClick(label : Label, listener : Listener)
  fun label_min_width(label : Label, width : Float32)
  fun label_text(label : Label, text : Pointer(UInt8))
  fun label_size_text(label : Label, text : Pointer(UInt8))
  fun label_font(label : Label, font : Font)
  fun label_style_over(label : Label, fstyle : UInt32)
  fun label_multiline(label : Label, multiline : Bool)
  fun label_align(label : Label, align : AlignT)
  fun label_color(label : Label, color : ColorT)
  fun label_color_over(label : Label, color : ColorT)
  fun label_bgcolor(label : Label, color : ColorT)
  fun label_bgcolor_over(label : Label, color : ColorT)
  fun label_trim(label : Label, ellipsis : EllipsisT)
  fun label_get_text(label : Label) : Pointer(UInt8)
  fun label_get_font(label : Label) : Font
  fun layout_create(ncols : UInt32, nrows : UInt32) : Layout
  fun layout_cell(layout : Layout, col : UInt32, row : UInt32) : Cell
  fun layout_control(layout : Layout, col : UInt32, row : UInt32) : GuiControl
  fun layout_label(layout : Layout, label : Label, col : UInt32, row : UInt32)
  fun layout_button(layout : Layout, button : Button, col : UInt32, row : UInt32)
  fun layout_popup(layout : Layout, popup : PopUp, col : UInt32, row : UInt32)
  fun layout_edit(layout : Layout, edit : Edit, col : UInt32, row : UInt32)
  fun layout_combo(layout : Layout, combo : Combo, col : UInt32, row : UInt32)
  fun layout_listbox(layout : Layout, list : ListBox, col : UInt32, row : UInt32)
  fun layout_updown(layout : Layout, updown : UpDown, col : UInt32, row : UInt32)
  fun layout_slider(layout : Layout, slider : Slider, col : UInt32, row : UInt32)
  fun layout_progress(layout : Layout, progress : Progress, col : UInt32, row : UInt32)
  fun layout_view(layout : Layout, view : View, col : UInt32, row : UInt32)
  fun layout_textview(layout : Layout, view : TextView, col : UInt32, row : UInt32)
  fun layout_webview(layout : Layout, view : WebView, col : UInt32, row : UInt32)
  fun layout_imageview(layout : Layout, view : ImageView, col : UInt32, row : UInt32)
  fun layout_tableview(layout : Layout, view : TableView, col : UInt32, row : UInt32)
  fun layout_splitview(layout : Layout, view : SplitView, col : UInt32, row : UInt32)
  fun layout_panel(layout : Layout, panel : Panel, col : UInt32, row : UInt32)
  fun layout_panel_replace(layout : Layout, panel : Panel, col : UInt32, row : UInt32)
  fun layout_layout(layout : Layout, sublayout : Layout, col : UInt32, row : UInt32)
  fun layout_get_label(layout : Layout, col : UInt32, row : UInt32) : Label
  fun layout_get_button(layout : Layout, col : UInt32, row : UInt32) : Button
  fun layout_get_popup(layout : Layout, col : UInt32, row : UInt32) : PopUp
  fun layout_get_edit(layout : Layout, col : UInt32, row : UInt32) : Edit
  fun layout_get_combo(layout : Layout, col : UInt32, row : UInt32) : Combo
  fun layout_get_listbox(layout : Layout, col : UInt32, row : UInt32) : ListBox
  fun layout_get_updown(layout : Layout, col : UInt32, row : UInt32) : UpDown
  fun layout_get_slider(layout : Layout, col : UInt32, row : UInt32) : Slider
  fun layout_get_progress(layout : Layout, col : UInt32, row : UInt32) : Progress
  fun layout_get_view(layout : Layout, col : UInt32, row : UInt32) : View
  fun layout_get_textview(layout : Layout, col : UInt32, row : UInt32) : TextView
  fun layout_get_webview(layout : Layout, col : UInt32, row : UInt32) : WebView
  fun layout_get_imageview(layout : Layout, col : UInt32, row : UInt32) : ImageView
  fun layout_get_tableview(layout : Layout, col : UInt32, row : UInt32) : TableView
  fun layout_get_splitview(layout : Layout, col : UInt32, row : UInt32) : SplitView
  fun layout_get_panel(layout : Layout, col : UInt32, row : UInt32) : Panel
  fun layout_get_layout(layout : Layout, col : UInt32, row : UInt32) : Layout
  fun layout_ncols(layout : Layout) : UInt32
  fun layout_nrows(layout : Layout) : UInt32
  fun layout_insert_col(layout : Layout, col : UInt32)
  fun layout_insert_row(layout : Layout, row : UInt32)
  fun layout_remove_col(layout : Layout, col : UInt32)
  fun layout_remove_row(layout : Layout, row : UInt32)
  fun layout_taborder(layout : Layout, order : GuiOrientT)
  fun layout_tabstop(layout : Layout, col : UInt32, row : UInt32, tabstop : Bool)
  fun layout_hsize(layout : Layout, col : UInt32, width : Float32)
  fun layout_vsize(layout : Layout, row : UInt32, height : Float32)
  fun layout_hmargin(layout : Layout, col : UInt32, margin : Float32)
  fun layout_vmargin(layout : Layout, row : UInt32, margin : Float32)
  fun layout_hexpand(layout : Layout, col : UInt32)
  fun layout_hexpand2(layout : Layout, col1 : UInt32, col2 : UInt32, exp : Float32)
  fun layout_hexpand3(layout : Layout, col1 : UInt32, col2 : UInt32, col3 : UInt32, exp1 : Float32, exp2 : Float32)
  fun layout_hexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
  fun layout_vexpand(layout : Layout, row : UInt32)
  fun layout_vexpand2(layout : Layout, row1 : UInt32, row2 : UInt32, exp : Float32)
  fun layout_vexpand3(layout : Layout, row1 : UInt32, row2 : UInt32, row3 : UInt32, exp1 : Float32, exp2 : Float32)
  fun layout_vexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
  fun layout_halign(layout : Layout, col : UInt32, row : UInt32, align : AlignT)
  fun layout_valign(layout : Layout, col : UInt32, row : UInt32, align : AlignT)
  fun layout_show_col(layout : Layout, col : UInt32, visible : Bool)
  fun layout_show_row(layout : Layout, row : UInt32, visible : Bool)
  fun layout_margin(layout : Layout, mall : Float32)
  fun layout_margin2(layout : Layout, mtb : Float32, mlr : Float32)
  fun layout_margin4(layout : Layout, mt : Float32, mr : Float32, mb : Float32, ml : Float32)
  fun layout_bgcolor(layout : Layout, color : ColorT)
  fun layout_skcolor(layout : Layout, color : ColorT)
  fun layout_update(layout : Layout)
  fun layout_dbind_imp(layout : Layout, listener : Listener, type : Pointer(UInt8), size : UInt16)
  fun layout_dbind_obj_imp(layout : Layout, obj : Pointer(Void), type : Pointer(UInt8))
  fun layout_dbind_get_obj_imp(layout : Layout, type : Pointer(UInt8)) : Pointer(Void)
  fun layout_dbind_update_imp(layout : Layout, type : Pointer(UInt8), size : UInt16, mname : Pointer(UInt8), mtype : Pointer(UInt8), moffset : UInt16, msize : UInt16)
  fun listbox_create : ListBox
  fun listbox_on_down = listbox_OnDown(listbox : ListBox, listener : Listener)
  fun listbox_on_select = listbox_OnSelect(listbox : ListBox, listener : Listener)
  fun listbox_size(listbox : ListBox, size : S2Df)
  fun listbox_checkbox(listbox : ListBox, show : Bool)
  fun listbox_multisel(listbox : ListBox, multisel : Bool)
  fun listbox_add_elem(listbox : ListBox, text : Pointer(UInt8), image : Image)
  fun listbox_set_elem(listbox : ListBox, index : UInt32, text : Pointer(UInt8), image : Image)
  fun listbox_del_elem(listbox : ListBox, index : UInt32)
  fun listbox_font(listbox : ListBox, font : Font)
  fun listbox_clear(listbox : ListBox)
  fun listbox_color(listbox : ListBox, index : UInt32, color : ColorT)
  fun listbox_select(listbox : ListBox, index : UInt32, select : Bool)
  fun listbox_check(listbox : ListBox, index : UInt32, check : Bool)
  fun listbox_count(listbox : ListBox) : UInt32
  fun listbox_get_text(listbox : ListBox, index : UInt32) : Pointer(UInt8)
  fun listbox_get_image(listbox : ListBox, index : UInt32) : Image
  fun listbox_get_selected(listbox : ListBox) : UInt32
  fun listbox_get_row_height(listbox : ListBox) : Float32
  fun listbox_selected(listbox : ListBox, index : UInt32) : Bool
  fun listbox_checked(listbox : ListBox, index : UInt32) : Bool
  fun menu_create : Menu
  fun menu_destroy(menu : Pointer(Menu))
  fun menu_add_item(menu : Menu, item : MenuItem)
  fun menu_ins_item(menu : Menu, pos : UInt32, item : MenuItem)
  fun menu_del_item(menu : Menu, pos : UInt32)
  fun menu_launch(menu : Menu, window : Window, position : V2Df)
  fun menu_off_items(menu : Menu)
  fun menu_count(menu : Menu) : UInt32
  fun menu_get_item(menu : Menu, index : UInt32) : MenuItem
  fun menu_get_citem(menu : Menu, index : UInt32) : MenuItem
  fun menu_is_menubar(menu : Menu) : Bool
  fun menu_imp(menu : Menu) : Pointer(Void)
  fun menuitem_create : MenuItem
  fun menuitem_separator : MenuItem
  fun menuitem_on_click = menuitem_OnClick(item : MenuItem, listener : Listener)
  fun menuitem_enabled(item : MenuItem, enabled : Bool)
  fun menuitem_visible(item : MenuItem, visible : Bool)
  fun menuitem_state(item : MenuItem, state : GuiStateT)
  fun menuitem_text(item : MenuItem, text : Pointer(UInt8))
  fun menuitem_image(item : MenuItem, image : Image)
  fun menuitem_key(item : MenuItem, key : VKeyT, modifiers : UInt32)
  fun menuitem_submenu(item : MenuItem, submenu : Pointer(Menu))
  fun menuitem_get_text(item : MenuItem) : Pointer(UInt8)
  fun menuitem_get_image(item : MenuItem) : Image
  fun menuitem_get_separator(item : MenuItem) : Bool
  fun menuitem_get_enabled(item : MenuItem) : Bool
  fun menuitem_get_visible(item : MenuItem) : Bool
  fun menuitem_get_state(item : MenuItem) : GuiStateT
  fun menuitem_get_submenu(item : MenuItem) : Menu
  fun panel_create : Panel
  fun panel_scroll(hscroll : Bool, vscroll : Bool) : Panel
  fun panel_custom(hscroll : Bool, vscroll : Bool, border : Bool) : Panel
  fun panel_data_imp(panel : Panel, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
  fun panel_get_data_imp(panel : Panel) : Pointer(Void)
  fun panel_size(panel : Panel, size : S2Df)
  fun panel_layout(panel : Panel, layout : Layout) : UInt32
  fun panel_get_layout(panel : Panel, index : UInt32) : Layout
  fun panel_visible_layout(panel : Panel, index : UInt32)
  fun panel_update(panel : Panel)
  fun panel_scroll_width(panel : Panel) : Float32
  fun panel_scroll_height(panel : Panel) : Float32
  fun popup_create : PopUp
  fun popup_on_select = popup_OnSelect(popup : PopUp, listener : Listener)
  fun popup_tooltip(popup : PopUp, text : Pointer(UInt8))
  fun popup_add_elem(popup : PopUp, text : Pointer(UInt8), image : Image)
  fun popup_set_elem(popup : PopUp, index : UInt32, text : Pointer(UInt8), image : Image)
  fun popup_ins_elem(popup : PopUp, index : UInt32, text : Pointer(UInt8), image : Image)
  fun popup_del_elem(popup : PopUp, index : UInt32)
  fun popup_clear(popup : PopUp)
  fun popup_count(popup : PopUp) : UInt32
  fun popup_list_height(popup : PopUp, elems : UInt32)
  fun popup_selected(popup : PopUp, index : UInt32)
  fun popup_get_selected(popup : PopUp) : UInt32
  fun popup_get_text(popup : PopUp, index : UInt32) : Pointer(UInt8)
  fun popup_get_image(popup : PopUp, index : UInt32) : Image
  fun progress_create : Progress
  fun progress_min_width(progress : Progress, width : Float32)
  fun progress_undefined(progress : Progress, running : Bool)
  fun progress_value(progress : Progress, value : Float32)
  fun slider_create : Slider
  fun slider_vertical : Slider
  fun slider_on_moved = slider_OnMoved(slider : Slider, listener : Listener)
  fun slider_min_width(slider : Slider, width : Float32)
  fun slider_tooltip(slider : Slider, text : Pointer(UInt8))
  fun slider_steps(slider : Slider, steps : UInt32)
  fun slider_value(slider : Slider, value : Float32)
  fun slider_get_value(slider : Slider) : Float32
  fun splitview_horizontal : SplitView
  fun splitview_vertical : SplitView
  fun splitview_view(split : SplitView, view : View, tabstop : Bool)
  fun splitview_textview(split : SplitView, view : TextView, tabstop : Bool)
  fun splitview_webview(split : SplitView, view : WebView, tabstop : Bool)
  fun splitview_tableview(split : SplitView, view : TableView, tabstop : Bool)
  fun splitview_splitview(split : SplitView, view : SplitView)
  fun splitview_panel(split : SplitView, panel : Panel)
  fun splitview_pos(split : SplitView, mode : SplitModeT, pos : Float32)
  fun splitview_get_pos(split : SplitView, mode : SplitModeT) : Float32
  fun splitview_visible0(split : SplitView, visible : Bool)
  fun splitview_visible1(split : SplitView, visible : Bool)
  fun splitview_minsize0(split : SplitView, size : Float32)
  fun splitview_minsize1(split : SplitView, size : Float32)
  fun tableview_create : TableView
  fun tableview_on_data = tableview_OnData(view : TableView, listener : Listener)
  fun tableview_on_select = tableview_OnSelect(view : TableView, listener : Listener)
  fun tableview_on_row_click = tableview_OnRowClick(view : TableView, listener : Listener)
  fun tableview_on_header_click = tableview_OnHeaderClick(view : TableView, listener : Listener)
  fun tableview_font(view : TableView, font : Font)
  fun tableview_size(view : TableView, size : S2Df)
  fun tableview_add_column_text(view : TableView) : UInt32
  fun tableview_del_column(view : TableView, column_id : UInt32)
  fun tableview_column_count(view : TableView) : UInt32
  fun tableview_column_icon(view : TableView, column_id : UInt32, icon_height : Float32, hmargin : Float32)
  fun tableview_column_width(view : TableView, column_id : UInt32, width : Float32)
  fun tableview_column_limits(view : TableView, column_id : UInt32, min : Float32, max : Float32)
  fun tableview_column_align(view : TableView, column_id : UInt32, align : AlignT)
  fun tableview_column_resizable(view : TableView, column_id : UInt32, resizable : Bool)
  fun tableview_column_freeze(view : TableView, last_column_id : UInt32)
  fun tableview_header_title(view : TableView, column_id : UInt32, text : Pointer(UInt8))
  fun tableview_header_align(view : TableView, column_id : UInt32, align : AlignT)
  fun tableview_header_indicator(view : TableView, column_id : UInt32, indicator : UInt32)
  fun tableview_header_visible(view : TableView, visible : Bool)
  fun tableview_header_clickable(view : TableView, clickable : Bool)
  fun tableview_header_resizable(view : TableView, resizable : Bool)
  fun tableview_header_height(view : TableView, height : Float32)
  fun tableview_row_height(view : TableView, height : Float32)
  fun tableview_hkey_scroll(view : TableView, force_column : Bool, scroll : Float32)
  fun tableview_multisel(view : TableView, multisel : Bool, preserve : Bool)
  fun tableview_grid(view : TableView, hlines : Bool, vlines : Bool)
  fun tableview_update(view : TableView)
  fun tableview_select(view : TableView, rows : Pointer(UInt32), n : UInt32)
  fun tableview_deselect(view : TableView, rows : Pointer(UInt32), n : UInt32)
  fun tableview_deselect_all(view : TableView)
  fun tableview_selected(view : TableView) : Pointer(ArrStUInt32)
  fun tableview_focus_row(view : TableView, row : UInt32, align : AlignT)
  fun tableview_get_focus_row(view : TableView) : UInt32
  fun tableview_scroll_visible(view : TableView, horizontal : Bool, vertical : Bool)
  fun textview_create : TextView
  fun textview_on_filter = textview_OnFilter(view : TextView, listener : Listener)
  fun textview_on_focus = textview_OnFocus(view : TextView, listener : Listener)
  fun textview_size(view : TextView, size : S2Df)
  fun textview_clear(view : TextView)
  fun textview_printf(view : TextView, format : Pointer(UInt8), ...) : UInt32
  fun textview_writef(view : TextView, text : Pointer(UInt8))
  fun textview_cpos_printf(view : TextView, format : Pointer(UInt8), ...) : UInt32
  fun textview_cpos_writef(view : TextView, text : Pointer(UInt8))
  fun textview_rtf(view : TextView, rtf_in : Pointer(Stream))
  fun textview_units(view : TextView, units : UInt32)
  fun textview_family(view : TextView, family : Pointer(UInt8))
  fun textview_fsize(view : TextView, size : Float32)
  fun textview_fstyle(view : TextView, fstyle : UInt32)
  fun textview_color(view : TextView, color : ColorT)
  fun textview_bgcolor(view : TextView, color : ColorT)
  fun textview_pgcolor(view : TextView, color : ColorT)
  fun textview_halign(view : TextView, align : AlignT)
  fun textview_lspacing(view : TextView, scale : Float32)
  fun textview_bfspace(view : TextView, space : Float32)
  fun textview_afspace(view : TextView, space : Float32)
  fun textview_apply_all(view : TextView)
  fun textview_apply_select(view : TextView)
  fun textview_scroll_visible(view : TextView, horizontal : Bool, vertical : Bool)
  fun textview_editable(view : TextView, is_editable : Bool)
  fun textview_select(view : TextView, start : Int32, _end : Int32)
  fun textview_show_select(view : TextView, show : Bool)
  fun textview_del_select(view : TextView)
  fun textview_scroll_caret(view : TextView)
  fun textview_get_text(view : TextView) : Pointer(UInt8)
  fun textview_copy(view : TextView)
  fun textview_cut(view : TextView)
  fun textview_paste(view : TextView)
  fun textview_wrap(view : TextView, wrap : Bool)
  fun webview_create : WebView
  fun webview_on_focus = webview_OnFocus(view : WebView, listener : Pointer(Listener))
  fun webview_size(view : WebView, size : S2Df)
  fun webview_navigate(view : WebView, url : Pointer(UInt8))
  fun webview_back(view : WebView)
  fun webview_forward(view : WebView)
  fun updown_create : UpDown
  fun updown_on_click = updown_OnClick(updown : UpDown, listener : Listener)
  fun updown_tooltip(updown : UpDown, text : Pointer(UInt8))
  fun view_create : View
  fun view_scroll : View
  fun view_custom(scroll : Bool, border : Bool) : View
  fun view_data_imp(view : View, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
  fun view_get_data_imp(view : View) : Pointer(Void)
  fun view_size(view : View, size : S2Df)
  fun view_on_draw = view_OnDraw(view : View, listener : Listener)
  fun view_on_overlay = view_OnOverlay(view : View, listener : Listener)
  fun view_on_size = view_OnSize(view : View, listener : Listener)
  fun view_on_enter = view_OnEnter(view : View, listener : Listener)
  fun view_on_exit = view_OnExit(view : View, listener : Listener)
  fun view_on_move = view_OnMove(view : View, listener : Listener)
  fun view_on_down = view_OnDown(view : View, listener : Listener)
  fun view_on_up = view_OnUp(view : View, listener : Listener)
  fun view_on_click = view_OnClick(view : View, listener : Listener)
  fun view_on_drag = view_OnDrag(view : View, listener : Listener)
  fun view_on_wheel = view_OnWheel(view : View, listener : Listener)
  fun view_on_key_down = view_OnKeyDown(view : View, listener : Listener)
  fun view_on_key_up = view_OnKeyUp(view : View, listener : Listener)
  fun view_on_focus = view_OnFocus(view : View, listener : Listener)
  fun view_on_resign_focus = view_OnResignFocus(view : View, listener : Listener)
  fun view_on_accept_focus = view_OnAcceptFocus(view : View, listener : Listener)
  fun view_on_scroll = view_OnScroll(view : View, listener : Listener)
  fun view_allow_tab(view : View, allow : Bool)
  fun view_keybuf(view : View, buffer : Pointer(KeyBuf))
  fun view_get_size(view : View, size : Pointer(S2Df))
  fun view_content_size(view : View, size : S2Df, line : S2Df)
  fun view_scroll_x(view : View, pos : Float32)
  fun view_scroll_y(view : View, pos : Float32)
  fun view_scroll_size(view : View, width : Pointer(Float32), height : Pointer(Float32))
  fun view_scroll_visible(view : View, horizontal : Bool, vertical : Bool)
  fun view_viewport(view : View, pos : Pointer(V2Df), size : Pointer(S2Df))
  fun view_point_scale(view : View, scale : Pointer(Float32))
  fun view_update(view : View)
  fun view_native(view : View) : Pointer(Void)
  fun window_create(flags : WindowFlag) : Window
  fun window_destroy(window : Pointer(Window))
  fun window_panel(window : Window, panel : Panel)
  fun window_on_close = window_OnClose(window : Window, listener : Listener)
  fun window_on_moved = window_OnMoved(window : Window, listener : Listener)
  fun window_on_resize = window_OnResize(window : Window, listener : Listener)
  fun window_title(window : Window, text : Pointer(UInt8))
  fun window_show(window : Window)
  fun window_hide(window : Window)
  fun window_overlay(window : Window, parent : Window)
  fun window_modal(window : Window, parent : Window) : UInt32
  fun window_stop_modal(window : Window, return_value : UInt32)
  fun window_get_visible(window : Window) : Bool
  fun window_hotkey(window : Window, key : VKeyT, modifiers : UInt32, listener : Listener)
  fun window_clear_hotkeys(window : Window)
  fun window_cycle_tabstop(window : Window, cycle : Bool)
  fun window_next_tabstop(window : Window) : GuiFocusT
  fun window_previous_tabstop(window : Window) : GuiFocusT
  fun window_focus(window : Window, control : GuiControl) : GuiFocusT
  fun window_get_focus(window : Window) : GuiControl
  fun window_focus_info(window : Window, info : FocusInfo)
  fun window_update(window : Window)
  fun window_get_maximize(window : Window) : Bool
  fun window_maximize(window : Window)
  fun window_get_minimize(window : Window) : Bool
  fun window_minimize(window : Window)
  fun window_origin(window : Window, origin : V2Df)
  fun window_client_size(window : Window, size : S2Df)
  fun window_get_origin(window : Window) : V2Df
  fun window_get_size(window : Window) : S2Df
  fun window_get_client_size(window : Window) : S2Df
  fun window_control_frame(window : Window, control : GuiControl) : R2Df
  fun window_client_to_screen(window : Window, point : V2Df) : V2Df
  fun window_defbutton(window : Window, button : Button)
  fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Float32, hot_y : Float32)
  fun window_imp(window : Window) : Pointer(Void)
end

def v2df(x, y) : LibGUI::V2Df
  result = LibGUI::V2Df.new
  result.x = x
  result.y = y
  result
end

def s2df(x, y) : LibGUI::S2Df
  result = LibGUI::S2Df.new
  result.width = x
  result.height = y
  result
end
