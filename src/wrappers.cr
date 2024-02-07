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
      def {{name}}=(value : {{type}})
        LibGUI.{{@type.stringify.split("::").last.downcase.id}}_{{name}}(self, value)
      end
      def {{name}}
        {{type}}.new(LibGUI.{{@type.stringify.split("::").last.downcase.id}}_get_{{name}}(self, value))
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

    def initialize(@cols : Int32, @rows : Int32)
      @raw = LibGUI.layout_create(@cols, @rows)
    end

    define_place
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

    GUI.wrap_enum(State, GuiStateT) do
      On
      Off
      Mixed
    end

    @raw : LibGUI::Button

    def initialize(style : Style)
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

    def initialize(*, multiline : Bool = false)
      @raw = if multiline
               LibGUI.label_multiline
             else
               LibGUI.label_create
             end
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
