module GUI
  class TableView < Widget
    define_standard_init
    define_place

    event(on_data)
    event(on_select)
    event(on_row_click)
    event(on_header_click)

    lib_setter(font)
    lib_setter(size)
    lib_setter(row_height)
    lib_setter(header_height)
    lib_setter(header_visible)
    lib_setter(header_clickable)
    lib_setter(header_resizable)

    lib_function(update)
    lib_function(deselect_all)
    lib_function(scroll_visible, horizontal : Bool, vertical : Bool)
    lib_function_named(focus_row, get_focus_row)

    lib_function(column_count)
    lib_function(column_freeze, last_column_id : Int32)
    # TODO
    # fun tableview_add_column_text(view : TableView) : UInt32
    # fun tableview_del_column(view : TableView, column_id : UInt32)
    # fun tableview_column_icon(view : TableView, column_id : UInt32, icon_height : Float32, hmargin : Float32)
    # fun tableview_column_width(view : TableView, column_id : UInt32, width : Float32)
    # fun tableview_column_limits(view : TableView, column_id : UInt32, min : Float32, max : Float32)
    # fun tableview_column_align(view : TableView, column_id : UInt32, align : AlignT)
    # fun tableview_column_resizable(view : TableView, column_id : UInt32, resizable : Bool)
    # fun tableview_header_title(view : TableView, column_id : UInt32, text : Pointer(UInt8))
    # fun tableview_header_align(view : TableView, column_id : UInt32, align : AlignT)
    # fun tableview_header_indicator(view : TableView, column_id : UInt32, indicator : UInt32)
    # fun tableview_hkey_scroll(view : TableView, force_column : Bool, scroll : Float32)
    # fun tableview_multisel(view : TableView, multisel : Bool, preserve : Bool)
    # fun tableview_grid(view : TableView, hlines : Bool, vlines : Bool)
    # fun tableview_select(view : TableView, rows : Pointer(UInt32), n : UInt32)
    # fun tableview_deselect(view : TableView, rows : Pointer(UInt32), n : UInt32)
    # fun tableview_selected(view : TableView) : Pointer(ArrStUInt32)
    # fun tableview_focus_row(view : TableView, row : UInt32, align : AlignT)
  end
end
