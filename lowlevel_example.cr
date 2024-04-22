require "./src/nappgui-cr"

# inherit from GUI::Application class
class SimpleApp < GUI::Application
  @counter = 0

  # This fuction returns application main window
  # All gui layouts should be created here
  def gui : GUI::Window
    # create layout to place controls
    layout = GUI::Layout.new(1, 6, margin: 5)

    # create label
    label = GUI::Label.new(text: "Hello!, I'm a label")
    label.place(layout, 0, 0)

    # create button
    button = GUI::Button.new(:push, text: "Click Me!")
    button.place(layout, 0, 1)

    # create textview (multiline input)
    text = GUI::TextView.new
    text.place(layout, 0, 2)

    # create slider
    slider = GUI::Slider.new(vertical: false)
    slider.place(layout, 0, 3)
    progress = GUI::Progress.new
    progress.place(layout, 0, 4)

    # assign slider event
    slider.on_moved do
      progress.value = slider.value
    end

    # assign button on_click
    button.on_click do
      text.write("Button click (#{@counter})\n")
      @counter += 1
    end

    # create second window
    window2 = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "This is a second window")
    # otherwise it won't close
    window2.on_close do
      true
    end

    # create button to show second window
    button2 = GUI::Button.new(:push, text: "Second window")
    button2.on_click do
      window2.show
    end
    button2.place(layout, 0, 5)

    # configure layout sizes and margins
    layout.cols[0].size = 250
    layout.rows[2].size = 100
    layout.rows[0].margin = 5
    layout.rows[1].margin = 5

    # create a panel, place a layout to it, create a window, place a panel to it
    panel = LibGUI.panel_create
    LibGUI.panel_layout(panel, layout)
    window = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "Hello, World!", origin: v2df(500, 200))
    window.panel = panel
    # return created window
    window
  end

  def init
    # this is called after gui initialization but before showing window
    puts "init"
  end

  def done
    # this is called after application finished
    puts "done"
  end
end

# run the application
SimpleApp.new.run
