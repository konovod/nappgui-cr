require "./bindings/*"
require "./wrappers"

class App
  class_getter! instance : App

  getter window : GUI::Window

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

  window = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "Hello, World!")
  window.panel = panel
  window.origin = v2df(500, 200)

  window.on_close do
    LibGUI.osapp_finish
  end

  window.show
  App.new(window)
end

def update(data, ltime, ctime)
  # puts "#{ctime - ltime}"
  Fiber.yield
end

def done(something)
  App.instance.window.destroy
  puts "done"
end

LibGUI.osmain_imp(0, nil, nil, 0.05, ->{ init }, ->(data : Void*, ltime : Float64, ctime : Float64) { update(data, ltime, ctime) }, ->(data : Void**) { done(data) }, "")
