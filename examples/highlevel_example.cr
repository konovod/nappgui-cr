require "../src/nappgui-cr"
require "../src/highlevel"

abstract class Fragment
  abstract def name : String
  abstract def create_contents : GUI::Layout
end

class LabelsFragment < Fragment
  def name : String
    "Labels single line"
  end

  def create_contents : GUI::Layout
    GUI.make_layout do
      column do
        edit
        space 50
        combo
        popup
      end
    end
  end
end

class MultiLabelsFragment < Fragment
  def name : String
    "Labels multi line"
  end

  def create_contents : GUI::Layout
    GUI.make_layout do
      row do
        edit
        space 50
        combo
        popup
      end
    end
  end
end

ALL_FRAGMENTS = [LabelsFragment.new, MultiLabelsFragment.new]

class SimpleApp < GUI::Application
  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      space 5
      column do
        list = listbox(size: s2df(180, 256),
          items: ALL_FRAGMENTS.map(&.name))
        space 11

        details = panel do
          row do
            edit
            space 50
            combo
            popup
          end
        end
        list.on_select do
          i = list.selected
          if i >= 0
            layout = ALL_FRAGMENTS[i].create_contents
            new_panel = GUI::Panel.new(layout)
            # LibGUI.layout_panel_replace(details.layout, new_panel, 0, 0)
          end
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
