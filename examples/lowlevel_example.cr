require "../src/nappgui-cr"

# inherit from GUI::Application class
class SimpleApp < GUI::Application
  @counter = 0

  # This fuction returns application main window
  # All gui layouts should be created here
  def gui : GUI::Window
    # create layout to place controls
    layout = GUI::Layout.new(2, 1)

    listbox = GUI::ListBox.new(items: ["Labels single line", "Labels multi line"], size: s2df(180, 256))
    LibGUI.listbox_select(listbox, 0, true)
    listbox.place(layout, 0, 0)

    sublayout = GUI::Layout.new(1, 7)
    subpanel = GUI::Panel.new(sublayout)

    LibGUI.layout_valign(layout, 0, 0, GUI::Align::Top)
    LibGUI.layout_valign(layout, 1, 0, GUI::Align::Top)
    LibGUI.layout_margin(layout, 10)
    LibGUI.layout_hmargin(layout, 0, 10)

    # create a panel, place a layout to it, create a window, place a panel to it
    panel = LibGUI.panel_create
    LibGUI.panel_layout(panel, layout)
    window = GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STD, title: "Hello, World!", origin: v2df(500, 200))
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
