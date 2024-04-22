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

  alias Color = UInt32

  annotation VirtualField
  end

  abstract class Widget
    abstract def place(layout : Layout, x : Int32, y : Int32)

    def to_unsafe
      @raw
    end

    macro define_place
      def place(layout : Layout, x : Int32, y : Int32)
        LibGUI.layout_{{@type.stringify.split("::").last.downcase.id}}(layout, self, x, y)
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

    private def apply_args(**args)
      detected = 0
      {% for field in @type.methods.select(&.annotation(VirtualField)) %}
        {% name = field.name.gsub(/=/, "")
           typ = field.args.first.restriction %}
        if args[:{{name}}]?
          detected += 1
          {% if typ.stringify == "String" || typ.is_a?(Nop) %}
            self.{{name}} = args[:{{name}}]?.not_nil!
          {% else %}
            self.{{name}} = {{typ}}.new(args[:{{name}}]?.not_nil!)
          {% end %}

        end
      {% end %}
      # TODO - detect exact names
      raise "Some arguments (#{args.size - detected}) don't match gui properties: #{args}" if detected < args.size
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

  wrap_enum(Orientation, GuiOrientT) do
    Horizontal = 1
    Vertical   = 2
  end

  class Layout < Widget
    @raw : LibGUI::Layout

    def initialize(@cols : Int32, @rows : Int32, **args)
      @raw = LibGUI.layout_create(@cols, @rows)
      apply_args(**args)
    end

    define_place

    def cell(col, row)
      LigGUI.layout_cell(self, col, row)
    end

    def update
      LigGUI.layout_update(self)
    end

    lib_setter(taborder, Orientation)
    lib_setter(margin, Float32)
    lib_setter(bgcolor, Color)
    lib_setter(skcolor, Color)

    def set_margin(value : Float32)
      LibGUI.layout_margin(self, value)
    end

    def set_margin(v : Float32, h : Float32)
      LibGUI.layout_margin2(self, v, h)
    end

    def set_margin(top, bottom, left, right)
      LibGUI.layout_margin4(self, top, right, bottom, left)
    end

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
    end

    def rows
      Rows.new(self)
    end

    # fun layout_hexpand(layout : Layout, col : Uint32T)
    # fun layout_hexpand2(layout : Layout, col1 : Uint32T, col2 : Uint32T, exp : Real32T)
    # fun layout_hexpand3(layout : Layout, col1 : Uint32T, col2 : Uint32T, col3 : Uint32T, exp1 : Real32T, exp2 : Real32T)
    # fun layout_vexpand(layout : Layout, row : Uint32T)
    # fun layout_vexpand2(layout : Layout, row1 : Uint32T, row2 : Uint32T, exp : Real32T)
    # fun layout_vexpand3(layout : Layout, row1 : Uint32T, row2 : Uint32T, row3 : Uint32T, exp1 : Real32T, exp2 : Real32T)

    # fun layout_get_control_imp(layout : Layout, col : Uint32T, row : Uint32T, type : CharT*) : Void*
    # fun layout_get_layout(layout : Layout, col : Uint32T, row : Uint32T) : Layout
    # fun layout_tabstop(layout : Layout, col : Uint32T, row : Uint32T, tabstop : BoolT)
    # fun layout_halign(layout : Layout, col : Uint32T, row : Uint32T, align : AlignT)
    # fun layout_valign(layout : Layout, col : Uint32T, row : Uint32T, align : AlignT)
  end

  wrap_enum(State, GuiStateT) do
    On
    Off
    Mixed
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

    lib_setter(text, String)
    lib_setter(text_alt, String)
    lib_setter(font)
    lib_setter(image)
    lib_property(state, State)
    lib_property(tag, Int32)
    event(on_click)
  end

  class Label < Widget
    @raw : LibGUI::Label

    def initialize(*, multiline : Bool = false, **args)
      @raw = if multiline
               LibGUI.label_multiline
             else
               LibGUI.label_create
             end
      apply_args(**args)
    end

    define_place

    lib_setter(text, String)
    lib_setter(font)
    event(on_click)
    lib_setter(style_over)
    lib_setter(align, Align)
    lib_setter(color, Color)
    lib_setter(color_over, Color)
    lib_setter(bgcolor, Color)
    lib_setter(bgcolor_over, Color)
  end

  class Window < Widget
    @raw : LibGUI::Window

    def initialize(flags, **args)
      @raw = LibGUI.window_create(flags)
      apply_args(**args)
    end

    def place(layout : Layout, x : Int32, y : Int32)
      raise "Window cannot be placed to layout"
    end

    event(on_close)
    event(on_moved)
    event(on_resize)

    lib_setter(title, String)
    lib_property(origin)
    lib_property(size)
    lib_property(panel)

    def show
      LibGUI.window_show(@raw)
    end

    def hide
      LibGUI.window_hide(@raw)
    end

    def destroy
      LibGUI.window_destroy(pointerof(@raw))
    end

    #   fun window_modal(window : Window, parent : Window) : UInt32
    #   fun window_stop_modal(window : Window, return_value : UInt32)
    #   fun window_hotkey(window : Window, key : VkeyT, modifiers : UInt32, listener : Listener)
    #   fun window_update(window : Window)
    #   fun window_get_client_size(window : Window) : S2Df
    #   fun window_defbutton(window : Window, button : Button)
    #   fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Float32, hot_y : Float32)
  end

  class TextView < Widget
    @raw : LibGUI::TextView

    def initialize(**args)
      @raw = LibGUI.textview_create
      apply_args(**args)
    end

    define_place

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

    def write(text : String)
      LibGUI.textview_writef(self, text)
    end

    def clear
      LibGUI.textview_clear(self)
    end

    def scroll_down
      LibGUI.textview_scroll_down(self)
    end

    # fun textview_rtf(view : TextView, rtf_in : Stream)
  end

  class Progress < Widget
    @raw : LibGUI::Progress

    def initialize(**args)
      @raw = LibGUI.progress_create
      apply_args(**args)
    end

    define_place

    lib_setter(value, Float64)

    def undefined(running)
      LibGUI.progress_undefined(self, running)
    end
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
  end

  class Image
    @raw : LibGUI::Image

    def to_unsafe
      @raw
    end

    def initialize(@raw)
    end
  end

  class Popup < Widget
    @raw : LibGUI::PopUp

    def initialize(**args)
      @raw = LibGUI.popup_vertical
      apply_args(**args)
    end

    define_place

    event(on_select)
    lib_setter(tooltip, String)
    lib_property(selected, Int32)
    lib_setter(list_height, Int32)

    def count
      LibGUI.popup_count(self)
    end

    def clear
      LibGUI.popup_clear(self)
    end

    def []=(index, text : String, image : Image? = nil)
      LibGUI.popup_set_elem(self, index, text, image || LibGUI::Image.null)
    end

    def add(text : String, image : Image? = nil)
      LibGUI.popup_add_elem(self, index, text, image || LibGUI::Image.null)
    end

    def items=(items : Enumerable(String))
      clear
      items.each do |s|
        add(s)
      end
    end
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
  end

  class ImageView < Widget
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
    event(on_click)
    event(on_over_draw)
    lib_setter(size)
    lib_setter(scale)
    lib_setter(image, Image)
  end
end
