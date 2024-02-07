module GUI
  abstract class Widget
    abstract def place(layout : Layout, x : Int32, y : Int32)

    def to_unsafe
      @raw
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

    def place(layout : Layout, x : Int32, y : Int32)
      LibGUI.layout_layout(layout, self, x, y)
    end
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

    enum State
      On
      Off
      Mixed

      def to_unsafe
        self.unsafe_as(LibGUI::GuiStateT)
      end
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

    def place(layout : Layout, x : Int32, y : Int32)
      LibGUI.layout_button(layout, self, x, y)
    end

    lib_setter(text, String)
    lib_setter(text_alt, String)
    lib_setter(font)
    lib_setter(image)
    lib_property(state, State)
    lib_property(tag, Int32)
    event(on_click)
    # fun button_on_click = button_OnClick(button : Button, listener : Listener)
  end
end
