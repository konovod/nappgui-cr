require "../src/nappgui-cr"
require "../src/highlevel"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    window(origin: v2df(500, 200), title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32) do
      space 5
      column do
        label(text: "Hello!, I'm a label")
        space 50
        bt = button(GUI::Button::Style::Push, text: "Click Me!")
        space 5
        txt = textview # (height: 100)
        bt.on_click do
          txt.write("Button click (#{@counter})\n")
          @counter += 1
        end
        slider = slider(vertical: false)
        progress = progress()
        slider.on_moved do
          progress.value = slider.value
        end
        view(scroll: false, border: true)
        updown
        tableview

        # panel_lay = GUI.layout do
        #   row do
        #     label(text: "This is a subpanel")
        #     edit
        #   end
        #   row do
        #     label(text: "Second row os subpanel")
        #   end
        # end
        # panel(border: true, layout: panel_lay)
        panel(border: true) do
          row do
            label(text: "This is a subpanel")
            edit
          end
          row do
            label(text: "Second row os subpanel")
          end
        end
        space 10
      end
      space 50
      column do
        label(text: "This is a second column")
        slider = slider(vertical: false)
        progress = progress()
        slider.on_moved do
          progress.value = slider.value
        end
      end
      space 5
      column do
        label(text: "This is a third column")
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
