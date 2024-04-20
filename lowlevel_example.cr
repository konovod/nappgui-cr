require "./src/nappgui-cr"

class SimpleApp < GUI::Application
  @counter = 0

  def gui : GUI::Window
    panel = LibGUI.panel_create
    layout = GUI::Layout.new(1, 6, margin: 5)
    label = GUI::Label.new(text: "Hello!, I'm a label")
    label.place(layout, 0, 0)
    button = GUI::Button.new(:push, text: "Click Me!")
    button.place(layout, 0, 1)
    text = GUI::TextView.new
    text.place(layout, 0, 2)

    slider = GUI::Slider.new(vertical: false)
    slider.place(layout, 0, 3)
    progress = GUI::Progress.new
    progress.place(layout, 0, 4)

    slider.on_moved do
      progress.value = slider.value
    end

    button.on_click do
      text.write("Button click (#{@counter})\n")
      @counter += 1
    end

    window2 = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "This is a second window")
    window2.on_close do
      true
    end
    button2 = GUI::Button.new(:push, text: "Second window")
    button2.on_click do
      window2.show
    end
    button2.place(layout, 0, 5)

    layout.cols[0].size = 250
    layout.rows[2].size = 100
    layout.rows[0].margin = 5
    layout.rows[1].margin = 5
    LibGUI.panel_layout(panel, layout)

    window = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "Hello, World!", origin: v2df(500, 200))
    window.panel = panel
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
