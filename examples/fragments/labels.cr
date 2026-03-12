class LabelsFragment < Fragment
  CAPTIONS = (<<-HEREDOC
Hello
Hello, I'm a Label.
Hello, I'm a Label, longer than first.
Hello, I'm a Label, longer than first and longer than second.
Hello, I'm a Label, longer than first, longer than second and longer than third.
Hello, I'm a Label, longer than first, longer than second, longer than third and longer than fourth.
HEREDOC

    ).split("\n").map(&.chomp)

  def initialize(@multiline : Bool)
  end

  def name : String
    "Labels #{@multiline ? "multi" : "single"} line"
  end

  getter! layout : GUI::Layout

  def create_contents : GUI::Layout
    GUI.make_layout do
      column do
        space 5
        selector = popup(items: ["Natural", "100px", "200px", "300px", "400px"])
        selector.on_select do
          self.layout.cols[0].size = {0, 100, 200, 300, 400}[selector.selected].to_f32
          self.layout.update
        end
        c1 = LibGUI.gui_alt_color(color(192, 255, 255), color(48, 112, 112))
        c2 = LibGUI.gui_alt_color(color(255, 192, 255), color(128, 48, 112))
        c3 = LibGUI.gui_alt_color(color(255, 255, 192), color(112, 112, 48))
        labels = CAPTIONS.map_with_index do |s, i|
          label(text: s, multiline: @multiline, bgcolor: {c1, c2, c3}[i % 3])
        end

        labels[4].align = GUI::Align::Center
        labels[5].align = GUI::Align::Right

        labels[3].trim = GUI::Ellipsis::End
        labels[4].trim = GUI::Ellipsis::Middle
        labels[5].trim = GUI::Ellipsis::Begin
      end
    end.tap { |x| @layout = x }
  end
end

class MouseLabelsFragment < Fragment
  def name : String
    "Labels mouse sensitive"
  end

  def create_contents : GUI::Layout
    GUI.make_layout do
      column do
        font = GUI::Font.new(pixels: 20, style: :normal) # or just font = GUI::Font.new(20)
        label(text: "Mouse sensitive label", font: font, color_over: color(255, 0, 0), style_over: GUI::FontStyle::Bold)
        label(text: "Mouse sensitive label", font: font, color_over: color(255, 0, 0), style_over: GUI::FontStyle::Italic)
        label(text: "Mouse sensitive label", font: font, color_over: color(255, 0, 0), style_over: GUI::FontStyle::StrikeOut)
        label(text: "Mouse sensitive label", font: font, color_over: color(255, 0, 0), style_over: GUI::FontStyle::Underline)
        label(text: "Mouse sensitive label", font: font, color_over: color(255, 0, 0), bgcolor_over: color(0, 255, 255))
        font.free # can be skipped, then font will be destroyed later by gc
      end
    end
  end
end
