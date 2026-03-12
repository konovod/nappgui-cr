require "../src/nappgui-cr"
require "../src/highlevel"

abstract class Fragment
  abstract def name : String
  abstract def create_contents : GUI::Layout
end

require "./fragments/*"

ALL_FRAGMENTS = [LabelsFragment.new(false), LabelsFragment.new(true), MouseLabelsFragment.new]

class SimpleApp < GUI::Application
  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: LibGUI::WindowFlag::EkWINDOW_STD) do
      space 10
      row do
        list = listbox(size: s2df(180, 256), cell_valign: GUI::Align::Top,
          items: ALL_FRAGMENTS.map(&.name))
        space 10
        details = panel(ALL_FRAGMENTS[0].create_contents, cell_valign: GUI::Align::Top)
        list.on_select do
          i = list.selected
          if i >= 0 && i < ALL_FRAGMENTS.size
            new_panel = GUI::Panel.new(ALL_FRAGMENTS[i].create_contents)
            details.replace(new_panel)
          end
        end
      end
    end
  end

  def init
    puts "init"
    window.update
  end

  def done
    puts "done"
  end
end

SimpleApp.new.run
