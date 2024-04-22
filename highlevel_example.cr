require "./src/nappgui-cr"
require "./src/highlevel"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      space 5
      column(width: 250) do
        label(text: "Hello!, I'm a label")
        space 5
        bt = button(GUI::Button::Style::Push, text: "Click Me!")
        space 5
        txt = textview # (height: 100)
        bt.on_click do
          txt.write("Button click (#{@counter})\n")
          @counter += 1
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
