class ButtonsFragment < Fragment
  def name : String
    "Buttons"
  end

  def radio_buttons : GUI::Layout
    GUI.make_layout do
      column do
        %w(&Wireframe &Shaded &Realistic &V-Ray).each do |s|
          button(style: GUI::Button::Style::Radio, text: s)
          space 3
        end
      end
    end
  end

  def check_buttons : GUI::Layout
    GUI.make_layout do
      column do
        %w(&Lines M&eshes M&aterials L&ights).each do |s|
          button(style: GUI::Button::Style::Radio, text: s)
          space 3
        end
      end
    end
  end

  def create_contents : GUI::Layout
    GUI.make_layout do
      column do
        layout do
          row do
            layout(cell_halign: GUI::Align::Left) do
              row do
                # puts `dir`
                %w(folder disk search edit plus error).each do |s|
                  button(style: GUI::Button::Style::Flat, text: "#{s.capitalize} file",
                    image: LibGUI.image_from_file(".\\examples\\res\\#{s}24.png", Pointer(Void).null)
                  )
                end
              end
            end
          end
          row do
            layout(margin: 5) do
              row do
                button(style: GUI::Button::Style::Check, text: "Enable 3&D Render", state: GUI::State::On)
                button(style: GUI::Button::Style::Check3, text: "Enable &Preview Settings", state: GUI::State::Mixed)
              end
              row do
                panel(radio_buttons)
                panel(check_buttons)
              end
            end
          end
        end
      end
    end
  end
end
