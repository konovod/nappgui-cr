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

  def create_contents : GUI::Layout
    GUI.make_layout do
      space 5
      column do
        LABELS.each do |s|
          label(text: s, multiline: @multiline)
        end
      end
    end
  end
end
