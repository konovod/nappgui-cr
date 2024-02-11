# class MainForm < GUI::Form
#   @lines = ""

#   def gui
#     flow do
#       align :client
#       label "Hello world", x: 20, y: 20
#       button "Click me!" do
#         on_click do
#           puts "Button clicked"
#         end
#       end
#     end
#   end
# end

# GUI.run(MainForm.new(width: 800, height: 600))

# grid(3, 2) do
#   cell(0, 0) do
#   end
#   cell(1, 1) do
#   end
# end

# grid do
#   column do
#     cell do
#     end
#   end
#   ...
#   row do
#     cell do
#     end
#   end
#   ...
# end

class SimpleApp < GUI::Application
  @counter = 0

  def gui
    window(origin: {500, 200}, title: "Hello, World!", flags: 2 + 4 + 8 + 16 + 32, margin: 5) do
      column(width: 250) do
        label(text: "Hello!, I'm a label")
        space 5
        bt = button(:push, text: "Click Me!")
        space 5
        txt = textview(height: 100)
        bt.on_click do
          txt.write("Button click (#{@counter})\n")
          @counter += 1
        end
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
