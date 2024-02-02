require "./libFull"

class App
  class_getter! instance : App

  getter text : LibGUI::TextView
  getter window : LibGUI::Window
  property counter = 0

  def initialize(@window, @text)
    @@instance = self
  end

  def close
    LibGUI.osapp_finish
  end
end

def on_event(obj, event)
  app = App.instance
  app.counter += 1
  LibGUI.textview_writef(app.text, "Button click (#{app.counter})\n")
end

def on_close(obj, event)
  App.instance.close
end

def init : Nil
  puts "init"
  panel = LibGUI.panel_create
  layout = LibGUI.layout_create(1, 3)
  label = LibGUI.label_create
  LibGUI.label_text(label, "Hello!, I'm a label")
  LibGUI.layout_label(layout, label, 0, 0)
  button = LibGUI.button_push
  LibGUI.button_text(button, "Click Me!")
  LibGUI.layout_button(layout, button, 0, 1)
  text = LibGUI.textview_create
  LibGUI.layout_textview(layout, text, 0, 2)

  listen = LibGUI.listener_imp(button.as(Void*), ->(obj : Void*, event : LibGUI::Event) { on_event(obj, event) })
  LibGUI.button_on_click(button, listen)

  LibGUI.layout_hsize(layout, 0, 250)
  LibGUI.layout_vsize(layout, 2, 100)
  LibGUI.layout_margin(layout, 5)
  LibGUI.layout_vmargin(layout, 0, 5)
  LibGUI.layout_vmargin(layout, 1, 5)
  LibGUI.panel_layout(panel, layout)
  window = LibGUI.window_create(2 + 4 + 8 + 16 + 32)
  LibGUI.window_panel(window, panel)
  LibGUI.window_origin(window, v2df(500, 200))
  LibGUI.window_title(window, "Hello, World!")

  listen = LibGUI.listener_imp(window.as(Void*), ->(obj : Void*, event : LibGUI::Event) { on_close(obj, event) })
  LibGUI.window_on_close(window, listen)

  LibGUI.window_show(window)
  App.new(window, text)
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
