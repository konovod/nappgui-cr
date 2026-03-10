class LabelsFragment < Fragment
  LABELS = (<<-HEREDOC
Hello
Hello, I'm a Label.
Hello, I'm a Label, longer than first.
Hello, I'm a Label, longer than first and longer than second.
Hello, I'm a Label, longer than first, longer than second and longer than third.
Hello, I'm a Label, longer than first, longer than second, longer than third and longer than fourth.
HEREDOC

    ).split("\r\n")

  def initialize(@multiline : Bool)
  end

  def name : String
    "Labels #{@multiline ? "multi" : "single"} line"
  end

  @layout : GUI::Layout?

  def create_contents : GUI::Layout
    GUI.make_layout do
      column do
        selector = popup(items: ["Natural", "100px", "200px", "300px", "400px"])
        selector.on_select do
          @layout.not_nil!.cols[0].size = {0, 100, 200, 300, 400}[selector.selected].to_f32
          @layout.not_nil!.update
        end

        c1 = color(192, 255, 255)
        c2 = color(255, 192, 255)
        c3 = color(255, 255, 192)

        LABELS.each_with_index do |s, i|
          label(text: s, multiline: @multiline, bgcolor: {c1, c2, c3}[i % 3])
        end
      end
    end.tap { |x| @layout = x }
  end
end
