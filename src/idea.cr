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

grid(3, 2) do
  cell(0, 0) do
  end
  cell(1, 1) do
  end
end

grid do
  column do
    cell do
    end
  end
  ...
  row do
    cell do
    end
  end
  ...
end
