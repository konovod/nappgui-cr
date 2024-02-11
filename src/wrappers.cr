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
      def {{name}}=(value)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
    end

    macro lib_property(name)
      def {{name}}=(value)
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
      def {{name}}
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_get_{{name}}(self, value)
      end
    end

    macro lib_property(name, type)
      @[VirtualField]
      def {{name}}=(value : {{type}})
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
      def {{name}}
        {{type}}.new(LibGUI.{{@type.stringify.split("::").last.downcase.id}}_get_{{name}}(self, value))
      end
    end

    private def apply_args(**args)
      detected = 0
      {% for field in @type.methods.select(&.annotation(VirtualField)) %}
        {% name = field.name.gsub(/=/, "")
           typ = field.args.first.restriction %}
        if args[:{{name}}]?
          detected += 1
          {% if typ.stringify == "String" %}
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
end
