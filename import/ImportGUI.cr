@[Include("nappgui.h", prefix: %w(button_ cell_ combo_ comwin_ edit_ globals_ gui_ evbind_ imageview_ label_ layout_ listbox_ menu_ menuitem_ panel_ popup_ progress_ slider_ splitview_ tableview_ textview_ updown_ view_ window_), remove_prefix: false, flags: "-Id:/projects/other/nappgui/headers2 -D_WINDOWS -D__GNUC__=15")]
#@[Include("gui/button.h", prefix: %w(button), remove_prefix: false, flags: "-Id:/projects/other/nappgui/headers2 -D_WINDOWS -D__GNUC__=15")]
@[Link("gui")]
lib LibGUI
end
