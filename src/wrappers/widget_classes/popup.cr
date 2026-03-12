module GUI
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
end
