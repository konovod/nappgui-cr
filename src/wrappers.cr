module GUI
  macro wrap_enum(our_name, lib_name, &block)
    enum {{our_name}}
      {{block.body}}

      def to_unsafe
        self.unsafe_as(LibGUI::{{lib_name}})
      end

      def self.new(v : LibGUI::{{lib_name}})
        v.unsafe_as(self)
      end
    end
  end

  wrap_enum(Align, AlignT) do
    Left    = 1
    Top     = 1
    Center  = 2
    Right   = 3
    Bottom  = 3
    Justify = 4
  end

  wrap_enum(State, GuiStateT) do
    On
    Off
    Mixed
  end

  wrap_enum(Orientation, GuiOrientT) do
    Horizontal = 1
    Vertical   = 2
  end

  wrap_enum(Device, DeviceT) do
    Desktop = 1
    Phone   = 2
    Tablet  = 3
  end

  wrap_enum(GuiScale, GuiScaleT) do
    Auto     = 1
    None     = 2
    Aspect   = 3
    Aspectdw = 4
  end

  wrap_enum(Ellipsis, EllipsisT) do
    None   = 1
    Begin  = 2
    Middle = 3
    End    = 4
    MLine  = 5
  end

  wrap_enum(GuiCursor, GuiCursorT) do
    Arrow  = 1
    Hand   = 2
    Ibeam  = 3
    Cross  = 4
    Sizewe = 5
    Sizens = 6
    User   = 7
  end

  wrap_enum(SplitMode, SplitModeT) do
    Normal = 1
    Fixed0
    Fixed1
  end

  wrap_enum(GuiFocus, GuiFocusT) do
    Changed  = 1
    Keep
    NoNext
    NoResign
    NoAccept
  end

  # TODO - VKeyT

  alias Color = UInt32

  annotation VirtualField
  end

  annotation LayoutField
  end

  abstract class Widget
    abstract def place(layout : Layout, x : Int32, y : Int32)

    def to_unsafe
      @raw
    end

    protected property saved_cell : Tuple(Layout, Int32, Int32)?

    macro layout_setter(name, internal_name, typ)
      @{{name}} : {{typ}}?
      @[LayoutField]
      def {{name}}=(value : {{typ}})
        @{{name}} = value
        if cell = saved_cell
          LibGUI.layout_{{internal_name}}(*cell, value)
        end
      end
    end

    layout_setter(cell_valign, valign, Align)
    layout_setter(cell_halign, halign, Align)
    layout_setter(tabstop, tabstop, Bool)

    macro define_place
      def place(layout : Layout, x : Int32, y : Int32)
        @saved_cell = {layout, x, y}
        LibGUI.layout_{{@type.stringify.split("::").last.downcase.id}}(layout, self, x, y)
      {% for field in Widget.methods.select(&.annotation(LayoutField)) %}
        {% name = field.name.gsub(/=/, "")
           typ = field.args.first.restriction %}      
        unless @{{name}}.nil?
          self.{{name}} = @{{name}}.not_nil!
        end
      {% end %}
      end
    end

    macro define_standard_init
      @raw : LibGUI::{{@type.stringify.split("::").last.id}}

      def initialize(**args)
        @raw = LibGUI.{{@type.stringify.split("::").last.downcase.id}}_create()
        apply_args(**args)
      end
    end

    macro define_standard_init(args)
      @raw : LibGUI::{{@type.stringify.split("::").last.id}}

      def initialize({{args}}, **args)
        @raw = LibGUI.{{@type.stringify.split("::").last.downcase.id}}_create({{args}})
        apply_args(**args)
      end
    end

    macro lib_setter(name, typ)
      @[VirtualField]
      def {{name}}=(value : {{typ}})
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
    end

    macro lib_setter(name)
      @[VirtualField]
      def {{name}}=(value)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
    end

    macro lib_property(name)
      @[VirtualField]
      def {{name}}=(value)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
      def {{name}}
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_get_{{name}}(self)
      end
    end

    macro lib_property(name, type)
      @[VirtualField]
      def {{name}}=(value : {{type}})
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
      def {{name}}
        {{type}}.new(LibGUI.{{@type.stringify.split("::").last.downcase.id}}_get_{{name}}(self))
      end
    end

    macro lib_function(name, *args)
      def {{name}}(*args)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, *args)
      end
    end

    macro lib_function_named(name, libname, *args)
      def {{name}}(*args)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{libname}}(self, *args)
      end
    end

    private def apply_args(**args)
      detected = 0
      {% for field in @type.methods.select(&.annotation(VirtualField)) + Widget.methods.select(&.annotation(LayoutField)) %}
        {% name = field.name.gsub(/=/, "")
           typ = field.args.first.restriction %}
        if args.has_key? :{{name}}
          detected += 1
          {% if typ.stringify == "String" || typ.is_a?(Nop) || typ.stringify == "Enumerable(String)" %}
            self.{{name}} = args[:{{name}}]?.not_nil!
          {% else %}
            self.{{name}} = {{typ}}.new(args[:{{name}}]?.not_nil!)
          {% end %}
        end
      {% end %}
      if detected < args.size
        got = args.keys.to_set
        {% for field in @type.methods.select(&.annotation(VirtualField)) + Widget.methods.select(&.annotation(LayoutField)) %}
          {% name = field.name.gsub(/=/, "") %}
          if args.has_key? :{{name}}
            got.delete(:{{name}})
          end
        {% end %}
        raise "Some arguments (#{args.size - detected}) don't match gui properties: #{got.to_a.join(", ")}"
      end
    end

    macro event(name)
      @{{name}}_box : Pointer(Void)?
      def {{name}}(&callback : -> )
        boxed_data = Box.box(callback)
        @{{name}}_box = boxed_data
        listen = LibGUI.listener_imp(boxed_data, ->(obj : Void*, event : LibGUI::Event) {
          data_as_callback = Box(typeof(callback)).unbox(obj)
          data_as_callback.call()
         })
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, listen)
      end
    end
  end

  class Layout < Widget
    @raw : LibGUI::Layout

    def initialize(@cols : Int32, @rows : Int32, **args)
      @raw = LibGUI.layout_create(@cols, @rows)
      apply_args(**args)
    end

    define_place

    lib_setter(taborder, Orientation)
    lib_setter(margin, Float32)
    lib_setter(bgcolor, Color)
    lib_setter(skcolor, Color)
    lib_setter(skcolor, Color)

    lib_function_named(set_margin, margin, value : Float32)
    lib_function_named(set_margin, margin2, v : Float32, h : Float32)
    lib_function_named(set_margin, margin4, top, bottom, left, right)
    lib_function(update)
    lib_function(cell, col, row)

    struct Column
      @owner : Layout
      @index : Int32

      def size=(value : Float32)
        LibGUI.layout_hsize(@owner, @index, value)
      end

      def margin=(value : Float32)
        LibGUI.layout_hmargin(@owner, @index, value)
      end

      def visible=(value : Bool)
        LibGUI.layout_show_col(@owner, @index, value)
      end

      def initialize(@owner, @index)
      end
    end

    struct Columns
      @owner : Layout

      def initialize(@owner)
      end

      def [](index)
        Column.new(@owner, index)
      end

      def size
        LibGUI.layout_ncols(@owner)
      end
    end

    def cols
      Columns.new(self)
    end

    struct Row
      @owner : Layout
      @index : Int32

      def size=(value : Float32)
        LibGUI.layout_vsize(@owner, @index, value)
      end

      def margin=(value : Float32)
        LibGUI.layout_vmargin(@owner, @index, value)
      end

      def visible=(value : Bool)
        LibGUI.layout_show_row(@owner, @index, value)
      end

      def initialize(@owner, @index)
      end
    end

    struct Rows
      @owner : Layout

      def initialize(@owner)
      end

      def [](index)
        Row.new(@owner, index)
      end

      def size
        LibGUI.layout_nrows(@owner)
      end
    end

    def rows
      Rows.new(self)
    end

    # TODO
    # fun layout_hexpand(layout : Layout, col : UInt32)
    # fun layout_hexpand2(layout : Layout, col1 : UInt32, col2 : UInt32, exp : Float32)
    # fun layout_hexpand3(layout : Layout, col1 : UInt32, col2 : UInt32, col3 : UInt32, exp1 : Float32, exp2 : Float32)
    # fun layout_hexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
    # fun layout_vexpand(layout : Layout, row : UInt32)
    # fun layout_vexpand2(layout : Layout, row1 : UInt32, row2 : UInt32, exp : Float32)
    # fun layout_vexpand3(layout : Layout, row1 : UInt32, row2 : UInt32, row3 : UInt32, exp1 : Float32, exp2 : Float32)
    # fun layout_vexpandn(layout : Layout, n : UInt32, index : Pointer(UInt32), exp : Pointer(Float32))
    # fun layout_insert_col(layout : Layout, col : UInt32)
    # fun layout_insert_row(layout : Layout, row : UInt32)
    # fun layout_remove_col(layout : Layout, col : UInt32)
    # fun layout_remove_row(layout : Layout, row : UInt32)
    # fun layout_dbind_imp(layout : Layout, listener : Listener, type : Pointer(UInt8), size : UInt16)
    # fun layout_dbind_obj_imp(layout : Layout, obj : Pointer(Void), type : Pointer(UInt8))
    # fun layout_dbind_get_obj_imp(layout : Layout, type : Pointer(UInt8)) : Pointer(Void)
    # fun layout_dbind_update_imp(layout : Layout, type : Pointer(UInt8), size : UInt16, mname : Pointer(UInt8), mtype : Pointer(UInt8), moffset : UInt16, msize : UInt16)

    # fun layout_control(layout : Layout, col : UInt32, row : UInt32) : GuiControl
    # fun layout_get_label(layout : Layout, col : UInt32, row : UInt32) : Label ...

  end

  class Button < Widget
    enum Style
      Push
      Check
      Check3
      Radio
      Flat
      FlatGLE
    end

    @raw : LibGUI::Button

    def initialize(style : Style, **args)
      @raw = case style
             in .push?
               LibGUI.button_push
             in .check?
               LibGUI.button_check
             in .check3?
               LibGUI.button_check3
             in .radio?
               LibGUI.button_radio
             in .flat?
               LibGUI.button_flat
             in .flat_gle?
               LibGUI.button_flatgle
             end
      apply_args(**args)
    end

    define_place

    lib_property(text, String)
    lib_setter(text_alt, String)
    lib_setter(tooltip, String)
    lib_property(font)
    lib_property(image)
    lib_property(image_alt)
    lib_property(state, State)
    lib_property(tag, Int32)
    event(on_click)
    lib_setter(min_width)
    lib_setter(hpadding)
    lib_setter(vpadding)

    lib_function_named(height, get_height)
  end

  class Label < Widget
    define_standard_init
    define_place

    lib_property(text, String)
    lib_property(font)
    event(on_click)
    lib_setter(style_over)
    lib_setter(align, Align)
    lib_setter(color, Color)
    lib_setter(color_over, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_over, Color)

    lib_setter(size_text, String)
    lib_setter(multiline)
    lib_setter(trim, Ellipsis)
    lib_setter(min_width)
  end

  class Window < Widget
    define_standard_init(flags)

    def place(layout : Layout, x : Int32, y : Int32)
      raise "Window cannot be placed to layout"
    end

    event(on_close)
    event(on_moved)
    event(on_resize)

    lib_setter(title, String)
    lib_property(origin)
    lib_setter(panel)
    lib_property(maximize)
    lib_property(minimize)
    lib_setter(client_size)

    lib_function(show)
    lib_function(hide)
    lib_function_named(visible?, get_visible)
    lib_function(update)

    def destroy
      LibGUI.window_destroy(pointerof(@raw))
    end

    # TODO
    # fun window_modal(window : Window, parent : Window) : UInt32
    # fun window_stop_modal(window : Window, return_value : UInt32)
    # fun window_hotkey(window : Window, key : VKeyT, modifiers : UInt32, listener : Listener)
    # fun window_clear_hotkeys(window : Window)
    # fun window_get_client_size(window : Window) : S2Df
    # fun window_defbutton(window : Window, button : Button)
    # fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Float32, hot_y : Float32)
    # fun window_overlay(window : Window, parent : Window)
    # fun window_cycle_tabstop(window : Window, cycle : Bool)
    # fun window_next_tabstop(window : Window) : GuiFocusT
    # fun window_previous_tabstop(window : Window) : GuiFocusT
    # fun window_focus(window : Window, control : GuiControl) : GuiFocusT
    # fun window_get_focus(window : Window) : GuiControl
    # fun window_focus_info(window : Window, info : FocusInfo)
    # fun window_get_size(window : Window) : S2Df
    # fun window_control_frame(window : Window, control : GuiControl) : R2Df
    # fun window_client_to_screen(window : Window, point : V2Df) : V2Df
    # fun window_imp(window : Window) : Pointer(Void)

  end

  class TextView < Widget
    define_standard_init
    define_place

    event(on_filter)
    event(on_focus)

    lib_setter(size)
    lib_setter(units, Int32)
    lib_setter(family, String)
    lib_setter(fsize, Float32)
    lib_setter(fstyle, Int32)
    lib_setter(color, Color)
    lib_setter(bgcolor, Color)
    lib_setter(pgcolor, Color)
    lib_setter(halign, Align)

    lib_setter(lspacing, Float32)
    lib_setter(bfspace, Float32)
    lib_setter(afspace, Float32)
    lib_setter(editable, Bool)
    lib_setter(wrap, Bool)
    lib_setter(show_select, Bool)

    lib_function_named(write, writef, text : String)
    lib_function(clear)
    lib_function(cut)
    lib_function(copy)
    lib_function(paste)
    lib_function(del_select)
    lib_function(scroll_caret)
    lib_function(apply_all)
    lib_function(apply_select)
    lib_function(scroll_visible, horizontal : Bool, vertical : Bool)
    lib_function_named(text, get_text)
    lib_function_named(write_at_cursor, cpos_writef, text : String)

    def select(start, aend)
      LibGUI.textview_select(self, start, aend)
    end

    # TODO
    # fun textview_rtf(view : TextView, rtf_in : Pointer(Stream))
  end

  class Progress < Widget
    define_standard_init
    define_place

    lib_setter(value, Float64)
    lib_setter(min_width)
    lib_function(undefined, running : Bool)
  end

  class Slider < Widget
    @raw : LibGUI::Slider

    def initialize(*, vertical = false, **args)
      @raw = vertical ? LibGUI.slider_vertical : LibGUI.slider_create
      apply_args(**args)
    end

    define_place

    event(on_moved)
    lib_property(value, Float64)
    lib_setter(tooltip, String)
    lib_setter(steps, Int32)
    lib_setter(min_width)
  end

  class Image
    @raw : LibGUI::Image

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end
  end

  class PopUp < Widget
    define_standard_init
    define_place

    event(on_select)
    lib_setter(tooltip, String)
    lib_property(selected, Int32)
    lib_setter(list_height, Int32)

    lib_function(count)
    lib_function(clear)
    lib_function_named(delete, del_elem, index : Int32)

    def []=(index, text : String, image : Image? = nil)
      LibGUI.popup_set_elem(self, index, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    def add(text : String, image : Image? = nil)
      LibGUI.popup_add_elem(self, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    def insert(index : Int32, text : String, image : Image? = nil)
      LibGUI.popup_ins_elem(self, index, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    @[VirtualField]
    def items=(items : Enumerable(String))
      clear
      items.each do |s|
        add(s)
      end
    end

    # TODO
    # fun popup_get_text(popup : PopUp, index : UInt32) : Pointer(UInt8)
    # fun popup_get_image(popup : PopUp, index : UInt32) : Image
    # def [](index) : Tuple(String, Image?)
    #   return {LibGUI.popup_get_text(self, index), LibGUI.popup_get_image(self, index)}
    # end

  end

  class Edit < Widget
    @raw : LibGUI::Edit

    def initialize(*, multiline : Bool = false, **args)
      @raw = if multiline
               LibGUI.edit_multiline
             else
               LibGUI.edit_create
             end
      apply_args(**args)
    end

    define_place

    event(on_filter)
    event(on_change)
    event(on_focus)
    lib_property(text, String)
    lib_setter(font)
    lib_setter(align, Align)
    lib_setter(passmode, Bool)
    lib_setter(editable, Bool)
    lib_setter(autoselect, Bool)
    lib_setter(tooltip, String)
    lib_setter(color, Color)
    lib_setter(color_focus, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_focus, Color)
    lib_setter(phtext, String)
    lib_setter(phcolor, Color)
    lib_setter(phstyle, UInt32)
    lib_setter(min_width)
    lib_setter(min_height)
    lib_setter(vpadding)

    lib_function(cut)
    lib_function(copy)
    lib_function(paste)
    lib_function_named(height, get_height)

    def select(start, aend)
      LibGUI.edit_select(self, start, aend)
    end
  end

  class ImageView < Widget
    define_standard_init
    define_place
    event(on_click)
    event(on_over_draw)
    lib_setter(size)
    lib_setter(scale)
    lib_property(image, Image)
  end

  class Combo < Widget
    define_standard_init
    define_place

    event(on_filter)
    event(on_change)
    event(on_focus)
    event(on_select)

    lib_setter(min_width)
    lib_setter(text, String)
    lib_setter(align, Align)
    lib_setter(passmode)
    lib_setter(editable)
    lib_setter(autoselect)
    lib_setter(tooltip, String)
    lib_setter(color, Color)
    lib_setter(color_focus, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_focus, Color)
    lib_setter(phtext, String)
    lib_setter(phcolor, Color)
    lib_setter(phstyle)
    lib_setter(list_height)
    lib_property(selected)

    lib_function(cut)
    lib_function(copy)
    lib_function(paste)
    lib_function(clear)
    lib_function(count)

    lib_function_named(delete, del_elem, index : Int32)

    def []=(index, text : String, image : Image? = nil)
      LibGUI.combo_set_elem(self, index, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    def add(text : String, image : Image? = nil)
      LibGUI.combo_add_elem(self, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    def insert(index : Int32, text : String, image : Image? = nil)
      LibGUI.combo_ins_elem(self, index, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    @[VirtualField]
    def items=(items : Enumerable(String))
      clear
      items.each do |s|
        add(s)
      end
    end

    def select(start, aend)
      LibGUI.combo_select(self, start, aend)
    end

    # TODO
    # fun combo_get_text(combo : Combo, index : UInt32) : Pointer(UInt8)
    # fun combo_get_image(combo : Combo, index : UInt32) : Image
  end

  class ListBox < Widget
    define_standard_init
    define_place

    event(on_down)
    event(on_select)

    lib_setter(size)
    lib_setter(checkbox)
    lib_setter(multisel)
    lib_setter(font)

    lib_function(count)
    lib_function(clear)
    lib_function_named(delete, del_elem, index : Int32)
    lib_function_named(selected, get_selected)
    lib_function_named(row_height, get_row_height)

    def []=(index, text : String, image : Image? = nil)
      LibGUI.listbox_set_elem(self, index, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    def add(text : String, image : Image? = nil)
      LibGUI.listbox_add_elem(self, text, image || Pointer(Void).null.as(LibGUI::Image))
    end

    @[VirtualField]
    def items=(items : Enumerable(String))
      clear
      items.each do |s|
        add(s)
      end
    end

    # TODO
    # fun listbox_color(listbox : ListBox, index : UInt32, color : ColorT)
    # fun listbox_select(listbox : ListBox, index : UInt32, select : Bool)
    # fun listbox_check(listbox : ListBox, index : UInt32, check : Bool)
    # fun listbox_get_text(listbox : ListBox, index : UInt32) : Pointer(UInt8)
    # fun listbox_get_image(listbox : ListBox, index : UInt32) : Image
    # fun listbox_selected(listbox : ListBox, index : UInt32) : Bool
    # fun listbox_checked(listbox : ListBox, index : UInt32) : Bool
  end

  class UpDown < Widget
    define_standard_init
    define_place

    event(on_click)
    lib_setter(tooltip, String)
  end

  class WebView < Widget
    @raw : LibGUI::WebView

    def initialize(**args)
      @raw = webview_create
      apply_args(**args)
    end

    define_place

    event(on_focus)
    lib_setter(tooltip, String)
    lib_setter(size)

    lib_function(navigate, url : String)
    lib_function(back)
    lib_function(forward)
  end

  class SplitView < Widget
    @raw : LibGUI::SplitView

    def initialize(*, orientation : Orientation, **args)
      @raw = case orientation
             in .horizontal?
               LibGUI.splitview_horizontal
             in .vertical?
               LibGUI.splitview_vertical
             end
      apply_args(**args)
    end

    define_place

    # TODO
    # fun splitview_view(split : SplitView, view : View, tabstop : Bool)
    # fun splitview_textview(split : SplitView, view : TextView, tabstop : Bool)
    # fun splitview_webview(split : SplitView, view : WebView, tabstop : Bool)
    # fun splitview_tableview(split : SplitView, view : TableView, tabstop : Bool)
    # fun splitview_splitview(split : SplitView, view : SplitView)
    # fun splitview_panel(split : SplitView, panel : Panel)
    # fun splitview_pos(split : SplitView, mode : SplitModeT, pos : Float32)
    # fun splitview_get_pos(split : SplitView, mode : SplitModeT) : Float32
    # fun splitview_visible0(split : SplitView, visible : Bool)
    # fun splitview_visible1(split : SplitView, visible : Bool)
    # fun splitview_minsize0(split : SplitView, size : Float32)
    # fun splitview_minsize1(split : SplitView, size : Float32)
  end

  class Panel < Widget
    @raw : LibGUI::Panel

    def initialize(*, hscroll : Bool = false, vscroll : Bool = false, border : Bool = false, **args, &)
      @raw = LibGUI.panel_custom(hscroll, vscroll, border)
      apply_args(**args)
      builder = RootBuilder.new
      with builder yield
      layout = builder.finish_layout
      LibGUI.panel_layout(@raw, layout)
    end

    def initialize(layout : Layout, *, hscroll : Bool = false, vscroll : Bool = false, border : Bool = false, **args)
      @raw = LibGUI.panel_custom(hscroll, vscroll, border)
      apply_args(**args)
      LibGUI.panel_layout(@raw, layout)
    end

    define_place

    def replace(another : Panel)
      raise "Panel not placed" unless saved_cell = @saved_cell
      layout, x, y = saved_cell
      LibGUI.layout_panel_replace(layout, another, x, y)
      another.saved_cell = {layout, x, y}
      layout.update
      @raw = Pointer(Void).null.as(LibGUI::Panel)
      # @saved_cell = nil
    end

    lib_setter(size)

    lib_function(update)
    lib_function(scroll_width)
    lib_function(scroll_height)

    # TODO
    # fun panel_data_imp(panel : Panel, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
    # fun panel_get_data_imp(panel : Panel) : Pointer(Void)
    # fun panel_layout(panel : Panel, layout : Layout) : UInt32
    # fun panel_get_layout(panel : Panel, index : UInt32) : Layout
    # fun panel_visible_layout(panel : Panel, index : UInt32)

  end

  class View < Widget
    def initialize(scroll : Bool, border : Bool, **args)
      @raw = LibGUI.view_custom(scroll, border)
      apply_args(**args)
    end

    def initialize(scroll : Bool, **args)
      @raw = if scroll
               LibGUI.view_scroll
             else
               LibGUI.view_create
             end
      apply_args(**args)
    end

    define_standard_init
    define_place

    event(on_draw)
    event(on_overlay)
    event(on_size)
    event(on_enter)
    event(on_exit)
    event(on_move)
    event(on_down)
    event(on_up)
    event(on_click)
    event(on_drag)
    event(on_wheel)
    event(on_key_down)
    event(on_key_up)
    event(on_focus)
    event(on_resign_focus)
    event(on_accept_focus)
    event(on_scroll)

    lib_setter(size)
    lib_setter(allow_tab)
    lib_setter(keybuf)

    lib_function(update)
    lib_function(native)
    lib_function(scroll_x, pos : Float32)
    lib_function(scroll_y, pos : Float32)
    lib_function(scroll_visible, horizontal : Bool, vertical : Bool)

    # TODO
    # fun view_data_imp(view : View, data : Pointer(Pointer(Void)), func_destroy_data : FPtrDestroy)
    # fun view_get_data_imp(view : View) : Pointer(Void)
    # fun view_get_size(view : View, size : Pointer(S2Df))
    # fun view_content_size(view : View, size : S2Df, line : S2Df)
    # fun view_scroll_size(view : View, width : Pointer(Float32), height : Pointer(Float32))
    # fun view_viewport(view : View, pos : Pointer(V2Df), size : Pointer(S2Df))
    # fun view_point_scale(view : View, scale : Pointer(Float32))
  end

  class TableView < Widget
    define_standard_init
    define_place

    event(on_data)
    event(on_select)
    event(on_row_click)
    event(on_header_click)
    event(xxx)

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
