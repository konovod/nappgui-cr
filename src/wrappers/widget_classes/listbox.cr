module GUI
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
end
