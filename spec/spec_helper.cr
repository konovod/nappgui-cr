require "spec"
require "../src/nappgui-cr"

class SimpleApp < GUI::Application
  def gui : GUI::Window
    window = GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STDRES, title: "Hello, World!", origin: v2df(500, 200))
  end

  def init
    spawn { sleep 5.seconds; puts "incomplete!"; exit(0) }
  end
end

spawn { SimpleApp.new.run }
sleep 0.1.seconds
