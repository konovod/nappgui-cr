require "./bindings/*"
require "./wrappers"
require "./app"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    panel = LibGUI.panel_create
    layout = GUI::Layout.new(1, 3, margin: 5)
    label = GUI::Label.new(text: "Hello!, I'm a label")
    label.place(layout, 0, 0)
    button = GUI::Button.new(:push, text: "Click Me!")
    button.place(layout, 0, 1)
    text = LibGUI.textview_create
    LibGUI.layout_textview(layout, text, 0, 2)

    button.on_click do
      LibGUI.textview_writef(text, "Button click (#{@counter})\n")
      @counter += 1
    end

    layout.cols[0].size = 250
    layout.rows[2].size = 100
    layout.rows[0].margin = 5
    layout.rows[1].margin = 5
    LibGUI.panel_layout(panel, layout)

    window = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "Hello, World!", origin: v2df(500, 200))
    window.panel = panel
    window.on_close do
      LibGUI.osapp_finish
    end
    window
  end

  def init
    puts "init"
  end

  def done
    puts "done"
  end
end

SimpleApp.new.run
