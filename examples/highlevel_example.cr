require "../src/nappgui-cr"
require "../src/highlevel"

abstract class Fragment
  abstract def name : String
  abstract def create_contents : GUI::Layout
end

require "./fragments/*"

ALL_FRAGMENTS = [LabelsFragment.new(false), LabelsFragment.new(true)]

class SimpleApp < GUI::Application
  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      # space 10
      row do
        list = listbox(size: s2df(180, 256),
          items: ALL_FRAGMENTS.map(&.name))
        # space 10
        details = panel(ALL_FRAGMENTS[0].create_contents, size: s2df(200, 400))
        # list.select(0)
        list.on_select do
          i = list.selected
          if i >= 0
            new_panel = GUI::Panel.new(ALL_FRAGMENTS[i].create_contents)
            details.replace(new_panel)
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
