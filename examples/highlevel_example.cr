require "../src/nappgui-cr"
require "../src/highlevel"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      space 5
      row do
        listbox(size: s2df(180, 256),
          items: ["Labels single line",
                  "Labels multi line",
                  "Labels mouse sensitive",
                  "Buttons",
                  "PopUp Combo",
                  "ListBoxes",
                  "Form",
                  "Text select",
                  "Text editor",
                  "Sliders",
                  "Tabstops",
                  "TextViews",
                  "TableView",
                  "SplitViews",
                  "Modal Windows",
                  "Flyout Windows",
                  "Editbox padding",
                  "Button padding",
                  "Hotkeys",
                  "Data Binding",
                  "Struct Binding",
                  "Basic Layout",
                  "SubLayouts",
                  "Subpanels",
                  "Multi-Layouts",
                  "Scroll panel",
                  "Dynamic layouts",
                  "Dynamic menus",
                  "IP Input",
                  "Font x-scale",
                  "Font units",
                  "Reduce components",
                  "Common windows",
          ])
        panel do
          edit
          combo
          popup
        end
      end
    end
  end

  def init
    puts "init"
  end

  def done
    puts "done"
  end
end

SimpleApp.new.run
