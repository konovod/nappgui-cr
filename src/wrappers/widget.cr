module GUI
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
end
