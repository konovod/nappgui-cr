require "../src/nappgui-cr"
require "../src/highlevel"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      space 5
      column do
        listbox(items: ["Labels single line", "Labels multi line"])
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
