require "./bindings/*"
require "./wrappers"

class App
  class_getter! instance : App

  getter window : LibGUI::Window

  def initialize(@window)
    @@instance = self
  end
end

def init : Nil
  puts "init"
  panel = LibGUI.panel_create
  layout = GUI::Layout.new(1, 3, margin: 5)
  label = GUI::Label.new(text: "Hello!, I'm a label")
  label.place(layout, 0, 0)
  button = GUI::Button.new(:push, text: "Click Me!")
  button.place(layout, 0, 1)
  text = LibGUI.textview_create
  LibGUI.layout_textview(layout, text, 0, 2)

  counter = 0
  button.on_click do
    LibGUI.textview_writef(text, "Button click (#{counter})\n")
    counter += 1
  end

  # layout.margin = 5
  layout.cols[0].size = 250
  layout.rows[2].size = 100
  layout.rows[0].margin = 5
  layout.rows[1].margin = 5
  LibGUI.panel_layout(panel, layout)
  window = LibGUI.window_create(2 + 4 + 8 + 16 + 32)
  LibGUI.window_panel(window, panel)
  LibGUI.window_origin(window, v2df(500, 200))
  LibGUI.window_title(window, "Hello, World!")

  listen = LibGUI.listener_imp(window.as(Void*), ->(obj : Void*, event : LibGUI::Event) { LibGUI.osapp_finish })
  LibGUI.window_on_close(window, listen)

  LibGUI.window_show(window)
  App.new(window)
end

def update(data, ltime, ctime)
  # puts "#{ctime - ltime}"
  Fiber.yield
end

def done(something)
  w = App.instance.window
  LibGUI.window_destroy(pointerof(w))

  puts "done"
end

LibGUI.osmain_imp(0, nil, nil, 0.05, ->{ init }, ->(data : Void*, ltime : Float64, ctime : Float64) { update(data, ltime, ctime) }, ->(data : Void**) { done(data) }, "")
