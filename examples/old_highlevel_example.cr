require "../src/nappgui-cr"
require "../src/layout_dsl"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: LibGUI::WindowFlag::EkWINDOW_STD) do
      space 5
      column do
        text = textview(size: s2df(250, 100))
        slider = slider(vertical: false)
        progress = progress()
        slider.on_moved { progress.value = slider.value }
        button = button(GUI::Button::Style::Push, text: "Click Me!")
        button.on_click do
          text.write("Button click (#{@counter})\n")
          @counter += 1
        end
        button2 = button(GUI::Button::Style::Push, text: "Second window")
        button2.on_click do
          window2.show
        end
      end
    end
  end

  def init
    puts "init"
  end

  def done
    if w = @window2
      w.destroy
    end
    puts "done"
  end

  @window2 : GUI::Window?

  private def window2
    @window2 ||= GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STD, title: "Second window").tap do |w|
      w.on_close { true }
    end
  end
end

SimpleApp.new.run
