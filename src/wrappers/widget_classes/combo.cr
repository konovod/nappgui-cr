module GUI
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
    lib_setter(phstyle, FontStyle)
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
end
