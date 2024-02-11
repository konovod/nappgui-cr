require "./libCore"

@[Link("#{__DIR__}/../../gui")]
lib LibGUI
  fun button_push : Button
  type Button = Void*
  fun button_check : Button
  fun button_check3 : Button
  fun button_radio : Button
  fun button_flat : Button
  fun button_flatgle : Button
  fun button_on_click = button_OnClick(button : Button, listener : Listener)
  fun button_text(button : Button, text : CharT*)
  fun button_text_alt(button : Button, text : CharT*)
  fun button_tooltip(button : Button, text : CharT*)
  fun button_font(button : Button, font : Font)
  type Font = Void*
  fun button_image(button : Button, image : Image)
  type Image = Void*
  fun button_image_alt(button : Button, image : Image)
  fun button_state(button : Button, state : GuiStateT)
  enum X_GuiStateT
    EkGuiOff = 0
    EkGuiOn = 1
    EkGuiMixed = 2
  end
  type GuiStateT = X_GuiStateT
  fun button_get_state(button : Button) : GuiStateT
  fun button_tag(button : Button, tag : UInt32)
  fun button_get_tag(button : Button) : UInt32
  fun cell_control_imp(cell : Cell, type : CharT*) : Void*
  type Cell = Void*
  fun cell_layout(cell : Cell) : Layout
  type Layout = Void*
  fun cell_enabled(cell : Cell, enabled : BoolT)
  fun cell_visible(cell : Cell, visible : BoolT)
  fun cell_focus(cell : Cell)
  fun cell_padding(cell : Cell, pall : Float32)
  fun cell_padding2(cell : Cell, ptb : Float32, plr : Float32)
  fun cell_padding4(cell : Cell, pt : Float32, pr : Float32, pb : Float32, pl : Float32)
  fun cell_dbind_imp(cell : Cell, type : CharT*, size : UInt16, mname : CharT*, mtype : CharT*, moffset : UInt16, msize : UInt16)
  fun combo_create : Combo
  type Combo = Void*
  fun combo_on_filter = combo_OnFilter(combo : Combo, listener : Listener)
  fun combo_on_change = combo_OnChange(combo : Combo, listener : Listener)
  fun combo_text(combo : Combo, text : CharT*)
  fun combo_align(combo : Combo, align : AlignT)
  enum X_AlignT
    EkLeft = 1
    EkTop = 1
    EkCenter = 2
    EkRight = 3
    EkBottom = 3
    EkJustify = 4
  end
  type AlignT = X_AlignT
  fun combo_tooltip(combo : Combo, text : CharT*)
  fun combo_color(combo : Combo, color : ColorT)
  alias ColorT = UInt32
  fun combo_color_focus(combo : Combo, color : ColorT)
  fun combo_bgcolor(combo : Combo, color : ColorT)
  fun combo_bgcolor_focus(combo : Combo, color : ColorT)
  fun combo_phtext(combo : Combo, text : CharT*)
  fun combo_phcolor(combo : Combo, color : ColorT)
  fun combo_phstyle(combo : Combo, fstyle : UInt32)
  fun combo_get_text(combo : Combo, index : UInt32) : CharT*
  fun combo_count(combo : Combo) : UInt32
  fun combo_add_elem(combo : Combo, text : CharT*, image : Image)
  fun combo_set_elem(combo : Combo, index : UInt32, text : CharT*, image : Image)
  fun combo_ins_elem(combo : Combo, index : UInt32, text : CharT*, image : Image)
  fun combo_del_elem(combo : Combo, index : UInt32)
  fun combo_duplicates(combo : Combo, duplicates : BoolT)
  fun comwin_open_file(parent : Window, ftypes : CharT**, size : UInt32, start_dir : CharT*) : CharT*
  type Window = Void*
  fun comwin_save_file(parent : Window, ftypes : CharT**, size : UInt32, start_dir : CharT*) : CharT*
  fun comwin_color(parent : Window, title : CharT*, x : Float32, y : Float32, halign : AlignT, valign : AlignT, current : ColorT, colors : ColorT*, n : UInt32, on_change : Listener)
  fun edit_create : Edit
  type Edit = Void*
  fun edit_multiline : Edit
  fun edit_on_filter = edit_OnFilter(edit : Edit, listener : Listener)
  fun edit_on_change = edit_OnChange(edit : Edit, listener : Listener)
  fun edit_text(edit : Edit, text : CharT*)
  fun edit_font(edit : Edit, font : Font)
  fun edit_align(edit : Edit, align : AlignT)
  fun edit_passmode(edit : Edit, passmode : BoolT)
  fun edit_editable(edit : Edit, is_editable : BoolT)
  fun edit_autoselect(edit : Edit, autoselect : BoolT)
  fun edit_tooltip(edit : Edit, text : CharT*)
  fun edit_color(edit : Edit, color : ColorT)
  fun edit_color_focus(edit : Edit, color : ColorT)
  fun edit_bgcolor(edit : Edit, color : ColorT)
  fun edit_bgcolor_focus(edit : Edit, color : ColorT)
  fun edit_phtext(edit : Edit, text : CharT*)
  fun edit_phcolor(edit : Edit, color : ColorT)
  fun edit_phstyle(edit : Edit, fstyle : UInt32)
  fun edit_get_text(edit : Edit) : CharT*
  fun globals_device : DeviceT
  enum X_DeviceT
    EkDesktop = 1
    EkPhone = 2
    EkTablet = 3
  end
  type DeviceT = X_DeviceT
  fun globals_resolution(resolution : S2Df*)
  struct X_S2dfT
    width : Float32
    height : Float32
  end
  type S2Df = X_S2dfT
  fun globals_mouse_position : V2Df
  struct X_V2dfT
    x : Float32
    y : Float32
  end
  alias V2Df = X_V2dfT
  fun gui_start
  fun gui_finish
  fun gui_respack(func_respack : FPtrRespack)
  alias FPtrRespack = (CharT* -> ResPack)
  fun gui_language(lang : CharT*)
  fun gui_text(id : ResId) : CharT*
  fun gui_image(id : ResId) : Image
  fun gui_file(id : ResId, size : UInt32*) : ByteT*
  fun gui_dark_mode : BoolT
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
  fun evbind_object_imp(e : Event, type : CharT*) : Void*
  fun evbind_modify_imp(e : Event, type : CharT*, size : UInt16, mname : CharT*, mtype : CharT*, moffset : UInt16, msize : UInt16) : BoolT
  fun imageview_create : ImageView
  type ImageView = Void*
  fun imageview_size(view : ImageView, size : S2Df)
  fun imageview_scale(view : ImageView, scale : GuiScaleT)
  enum X_GuiScaleT
    EkGuiScaleAuto = 1
    EkGuiScaleNone = 2
    EkGuiScaleAspect = 3
    EkGuiScaleAspectdw = 4
  end
  type GuiScaleT = X_GuiScaleT
  fun imageview_image(view : ImageView, image : Image)
  fun imageview_on_click = imageview_OnClick(view : ImageView, listener : Listener)
  fun imageview_on_over_draw = imageview_OnOverDraw(view : ImageView, listener : Listener)
  fun label_create : Label
  type Label = Void*
  fun label_multiline : Label
  fun label_on_click = label_OnClick(label : Label, listener : Listener)
  fun label_text(label : Label, text : CharT*)
  fun label_font(label : Label, font : Font)
  fun label_style_over(label : Label, fstyle : UInt32)
  fun label_align(label : Label, align : AlignT)
  fun label_color(label : Label, color : ColorT)
  fun label_color_over(label : Label, color : ColorT)
  fun label_bgcolor(label : Label, color : ColorT)
  fun label_bgcolor_over(label : Label, color : ColorT)
  fun layout_create(ncols : UInt32, nrows : UInt32) : Layout
  fun layout_cell(layout : Layout, col : UInt32, row : UInt32) : Cell
  fun layout_label(layout : Layout, label : Label, col : UInt32, row : UInt32)
  fun layout_button(layout : Layout, button : Button, col : UInt32, row : UInt32)
  fun layout_popup(layout : Layout, popup : PopUp, col : UInt32, row : UInt32)
  type PopUp = Void*
  fun layout_edit(layout : Layout, edit : Edit, col : UInt32, row : UInt32)
  fun layout_combo(layout : Layout, combo : Combo, col : UInt32, row : UInt32)
  fun layout_listbox(layout : Layout, list : ListBox, col : UInt32, row : UInt32)
  type ListBox = Void*
  fun layout_updown(layout : Layout, updown : UpDown, col : UInt32, row : UInt32)
  type UpDown = Void*
  fun layout_slider(layout : Layout, slider : Slider, col : UInt32, row : UInt32)
  type Slider = Void*
  fun layout_progress(layout : Layout, progress : Progress, col : UInt32, row : UInt32)
  type Progress = Void*
  fun layout_view(layout : Layout, view : View, col : UInt32, row : UInt32)
  type View = Void*
  fun layout_textview(layout : Layout, view : TextView, col : UInt32, row : UInt32)
  type TextView = Void*
  fun layout_imageview(layout : Layout, view : ImageView, col : UInt32, row : UInt32)
  fun layout_tableview(layout : Layout, view : TableView, col : UInt32, row : UInt32)
  type TableView = Void*
  fun layout_splitview(layout : Layout, view : SplitView, col : UInt32, row : UInt32)
  type SplitView = Void*
  fun layout_panel(layout : Layout, panel : Panel, col : UInt32, row : UInt32)
  type Panel = Void*
  fun layout_layout(layout : Layout, sublayout : Layout, col : UInt32, row : UInt32)
  fun layout_get_control_imp(layout : Layout, col : UInt32, row : UInt32, type : CharT*) : Void*
  fun layout_get_layout(layout : Layout, col : UInt32, row : UInt32) : Layout
  fun layout_taborder(layout : Layout, order : GuiOrientT)
  enum X_GuiOrientT
    EkGuiHorizontal = 1
    EkGuiVertical = 2
  end
  type GuiOrientT = X_GuiOrientT
  fun layout_tabstop(layout : Layout, col : UInt32, row : UInt32, tabstop : BoolT)
  fun layout_hsize(layout : Layout, col : UInt32, width : Float32)
  fun layout_vsize(layout : Layout, row : UInt32, height : Float32)
  fun layout_hmargin(layout : Layout, col : UInt32, margin : Float32)
  fun layout_vmargin(layout : Layout, row : UInt32, margin : Float32)
  fun layout_hexpand(layout : Layout, col : UInt32)
  fun layout_hexpand2(layout : Layout, col1 : UInt32, col2 : UInt32, exp : Float32)
  fun layout_hexpand3(layout : Layout, col1 : UInt32, col2 : UInt32, col3 : UInt32, exp1 : Float32, exp2 : Float32)
  fun layout_vexpand(layout : Layout, row : UInt32)
  fun layout_vexpand2(layout : Layout, row1 : UInt32, row2 : UInt32, exp : Float32)
  fun layout_vexpand3(layout : Layout, row1 : UInt32, row2 : UInt32, row3 : UInt32, exp1 : Float32, exp2 : Float32)
  fun layout_halign(layout : Layout, col : UInt32, row : UInt32, align : AlignT)
  fun layout_valign(layout : Layout, col : UInt32, row : UInt32, align : AlignT)
  fun layout_show_col(layout : Layout, col : UInt32, visible : BoolT)
  fun layout_show_row(layout : Layout, row : UInt32, visible : BoolT)
  fun layout_margin(layout : Layout, mall : Float32)
  fun layout_margin2(layout : Layout, mtb : Float32, mlr : Float32)
  fun layout_margin4(layout : Layout, mt : Float32, mr : Float32, mb : Float32, ml : Float32)
  fun layout_bgcolor(layout : Layout, color : ColorT)
  fun layout_skcolor(layout : Layout, color : ColorT)
  fun layout_update(layout : Layout)
  fun layout_dbind_imp(layout : Layout, listener : Listener, type : CharT*, size : UInt16)
  fun layout_dbind_obj_imp(layout : Layout, obj : Void*, type : CharT*)
  fun layout_dbind_update_imp(layout : Layout, type : CharT*, size : UInt16, mname : CharT*, mtype : CharT*, moffset : UInt16, msize : UInt16)
  fun listbox_create : ListBox
  fun listbox_on_select = listbox_OnSelect(listbox : ListBox, listener : Listener)
  fun listbox_size(listbox : ListBox, size : S2Df)
  fun listbox_checkbox(listbox : ListBox, show : BoolT)
  fun listbox_multisel(listbox : ListBox, multisel : BoolT)
  fun listbox_add_elem(listbox : ListBox, text : CharT*, image : Image)
  fun listbox_set_elem(listbox : ListBox, index : UInt32, text : CharT*, image : Image)
  fun listbox_clear(listbox : ListBox)
  fun listbox_color(listbox : ListBox, index : UInt32, color : ColorT)
  fun listbox_select(listbox : ListBox, index : UInt32, select : BoolT)
  fun listbox_check(listbox : ListBox, index : UInt32, check : BoolT)
  fun listbox_count(listbox : ListBox) : UInt32
  fun listbox_text(listbox : ListBox, index : UInt32) : CharT*
  fun listbox_selected(listbox : ListBox, index : UInt32) : BoolT
  fun listbox_checked(listbox : ListBox, index : UInt32) : BoolT
  fun menu_create : Menu
  type Menu = Void*
  fun menu_destroy(menu : Menu*)
  fun menu_item(menu : Menu, item : MenuItem)
  type MenuItem = Void*
  fun menu_launch(menu : Menu, position : V2Df)
  fun menu_hide(menu : Menu)
  fun menu_off_items(menu : Menu)
  fun menu_get_item(menu : Menu, index : UInt32) : MenuItem
  fun menu_size(menu : Menu) : UInt32
  fun menu_imp(menu : Menu) : Void*
  fun menuitem_create : MenuItem
  fun menuitem_separator : MenuItem
  fun menuitem_on_click = menuitem_OnClick(item : MenuItem, listener : Listener)
  fun menuitem_enabled(item : MenuItem, enabled : BoolT)
  fun menuitem_visible(item : MenuItem, visible : BoolT)
  fun menuitem_text(item : MenuItem, text : CharT*)
  fun menuitem_image(item : MenuItem, image : Image)
  fun menuitem_key(item : MenuItem, key : VkeyT, modifiers : UInt32)
  fun menuitem_submenu(item : MenuItem, submenu : Menu*)
  fun menuitem_state(item : MenuItem, state : GuiStateT)
  fun panel_create : Panel
  fun panel_scroll(hscroll : BoolT, vscroll : BoolT) : Panel
  fun panel_data_imp(panel : Panel, data : Void**, func_destroy_data : FPtrDestroy)
  alias FPtrDestroy = (Void** -> Void)
  fun panel_get_data_imp(panel : Panel) : Void*
  fun panel_size(panel : Panel, size : S2Df)
  fun panel_layout(panel : Panel, layout : Layout) : UInt32
  fun panel_get_layout(panel : Panel, index : UInt32) : Layout
  fun panel_visible_layout(panel : Panel, index : UInt32)
  fun panel_update(panel : Panel)
  fun panel_scroll_width(panel : Panel) : Float32
  fun panel_scroll_height(panel : Panel) : Float32
  fun popup_create : PopUp
  fun popup_on_select = popup_OnSelect(popup : PopUp, listener : Listener)
  fun popup_tooltip(popup : PopUp, text : CharT*)
  fun popup_add_elem(popup : PopUp, text : CharT*, image : Image)
  fun popup_set_elem(popup : PopUp, index : UInt32, text : CharT*, image : Image)
  fun popup_clear(popup : PopUp)
  fun popup_count(popup : PopUp) : UInt32
  fun popup_list_height(popup : PopUp, elems : UInt32)
  fun popup_selected(popup : PopUp, index : UInt32)
  fun popup_get_selected(popup : PopUp) : UInt32
  fun progress_create : Progress
  fun progress_undefined(progress : Progress, running : BoolT)
  fun progress_value(progress : Progress, value : Float32)
  fun slider_create : Slider
  fun slider_vertical : Slider
  fun slider_on_moved = slider_OnMoved(slider : Slider, listener : Listener)
  fun slider_tooltip(slider : Slider, text : CharT*)
  fun slider_steps(slider : Slider, steps : UInt32)
  fun slider_value(slider : Slider, value : Float32)
  fun slider_get_value(slider : Slider) : Float32
  fun splitview_horizontal : SplitView
  fun splitview_vertical : SplitView
  fun splitview_size(split : SplitView, size : S2Df)
  fun splitview_view(split : SplitView, view : View)
  fun splitview_text(split : SplitView, view : TextView)
  fun splitview_split(split : SplitView, child : SplitView)
  fun splitview_panel(split : SplitView, panel : Panel)
  fun splitview_pos(split : SplitView, pos : Float32)
  fun tableview_create : TableView
  fun tableview_on_data = tableview_OnData(view : TableView, listener : Listener)
  fun tableview_on_select = tableview_OnSelect(view : TableView, listener : Listener)
  fun tableview_on_header_click = tableview_OnHeaderClick(view : TableView, listener : Listener)
  fun tableview_font(view : TableView, font : Font)
  fun tableview_size(view : TableView, size : S2Df)
  fun tableview_new_column_text(view : TableView) : UInt32
  fun tableview_column_width(view : TableView, column_id : UInt32, width : Float32)
  fun tableview_column_limits(view : TableView, column_id : UInt32, min : Float32, max : Float32)
  fun tableview_column_resizable(view : TableView, column_id : UInt32, resizable : BoolT)
  fun tableview_column_freeze(view : TableView, last_column_id : UInt32)
  fun tableview_header_title(view : TableView, column_id : UInt32, text : CharT*)
  fun tableview_header_align(view : TableView, column_id : UInt32, align : AlignT)
  fun tableview_header_indicator(view : TableView, column_id : UInt32, indicator : UInt32)
  fun tableview_header_visible(view : TableView, visible : BoolT)
  fun tableview_header_clickable(view : TableView, clickable : BoolT)
  fun tableview_header_resizable(view : TableView, resizable : BoolT)
  fun tableview_multisel(view : TableView, multisel : BoolT, preserve : BoolT)
  fun tableview_grid(view : TableView, hlines : BoolT, vlines : BoolT)
  fun tableview_update(view : TableView)
  fun tableview_select(view : TableView, rows : UInt32*, n : UInt32)
  fun tableview_deselect(view : TableView, rows : UInt32*, n : UInt32)
  fun tableview_deselect_all(view : TableView)
  fun tableview_selected(view : TableView) : ArrStUInt32*
  struct ArrStUInt32
    reserved : UInt32
    size : UInt32
    elem_sizeof : UInt16
    content : UInt32Data*
  end
  struct UInt32Data
    elem : UInt32[1024]
  end
  fun textview_create : TextView
  fun textview_size(view : TextView, size : S2Df)
  fun textview_clear(view : TextView)
  fun textview_printf(view : TextView, format : CharT*, ...) : UInt32
  fun textview_writef(view : TextView, text : CharT*)
  fun textview_rtf(view : TextView, rtf_in : Stream)
  fun textview_units(view : TextView, units : UInt32)
  fun textview_family(view : TextView, family : CharT*)
  fun textview_fsize(view : TextView, size : Float32)
  fun textview_fstyle(view : TextView, fstyle : UInt32)
  fun textview_color(view : TextView, color : ColorT)
  fun textview_bgcolor(view : TextView, color : ColorT)
  fun textview_pgcolor(view : TextView, color : ColorT)
  fun textview_halign(view : TextView, align : AlignT)
  fun textview_lspacing(view : TextView, scale : Float32)
  fun textview_bfspace(view : TextView, space : Float32)
  fun textview_afspace(view : TextView, space : Float32)
  fun textview_scroll_down(view : TextView)
  fun textview_editable(view : TextView, is_editable : BoolT)
  fun updown_create : UpDown
  fun updown_on_click = updown_OnClick(updown : UpDown, listener : Listener)
  fun updown_tooltip(updown : UpDown, text : CharT*)
  fun view_create : View
  fun view_scroll : View
  fun view_data_imp(view : View, data : Void**, func_destroy_data : FPtrDestroy)
  fun view_get_data_imp(view : View) : Void*
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
  fun view_keybuf(view : View, buffer : KeyBuf)
  fun view_get_size(view : View, size : S2Df*)
  fun view_content_size(view : View, size : S2Df, line : S2Df)
  fun view_scroll_x(view : View, pos : Float32)
  fun view_scroll_y(view : View, pos : Float32)
  fun view_scroll_size(view : View, width : Float32*, height : Float32*)
  fun view_viewport(view : View, pos : V2Df*, size : S2Df*)
  fun view_point_scale(view : View, scale : Float32*)
  fun view_update(view : View)
  fun view_native(view : View) : Void*
  fun window_create(flags : UInt32) : Window
  fun window_destroy(window : Window*)
  fun window_panel(window : Window, panel : Panel)
  fun window_on_close = window_OnClose(window : Window, listener : Listener)
  fun window_on_moved = window_OnMoved(window : Window, listener : Listener)
  fun window_on_resize = window_OnResize(window : Window, listener : Listener)
  fun window_title(window : Window, text : CharT*)
  fun window_show(window : Window)
  fun window_hide(window : Window)
  fun window_modal(window : Window, parent : Window) : UInt32
  fun window_stop_modal(window : Window, return_value : UInt32)
  fun window_hotkey(window : Window, key : VkeyT, modifiers : UInt32, listener : Listener)
  fun window_update(window : Window)
  fun window_origin(window : Window, origin : V2Df)
  fun window_size(window : Window, size : S2Df)
  fun window_get_origin(window : Window) : V2Df
  fun window_get_size(window : Window) : S2Df
  fun window_get_client_size(window : Window) : S2Df
  fun window_defbutton(window : Window, button : Button)
  fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Float32, hot_y : Float32)
  enum X_GuiCursorT
    EkGuiCursorArrow = 1
    EkGuiCursorHand = 2
    EkGuiCursorIbeam = 3
    EkGuiCursorCross = 4
    EkGuiCursorSizewe = 5
    EkGuiCursorSizens = 6
    EkGuiCursorUser = 7
  end
  type GuiCursorT = X_GuiCursorT
  fun window_imp(window : Window) : Void*
end

def v2df(x, y) : LibGUI::V2Df
  result = LibGUI::V2Df.new
  result.x = x
  result.y = y
  result
end
