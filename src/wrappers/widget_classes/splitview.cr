module GUI
  class SplitView < Widget
    @raw : LibGUI::SplitView

    def initialize(*, orientation : Orientation, **args)
      @raw = case orientation
             in .horizontal?
               LibGUI.splitview_horizontal
             in .vertical?
               LibGUI.splitview_vertical
             end
      apply_args(**args)
    end

    define_place

    # TODO
    # fun splitview_view(split : SplitView, view : View, tabstop : Bool)
    # fun splitview_textview(split : SplitView, view : TextView, tabstop : Bool)
    # fun splitview_webview(split : SplitView, view : WebView, tabstop : Bool)
    # fun splitview_tableview(split : SplitView, view : TableView, tabstop : Bool)
    # fun splitview_splitview(split : SplitView, view : SplitView)
    # fun splitview_panel(split : SplitView, panel : Panel)
    # fun splitview_pos(split : SplitView, mode : SplitModeT, pos : Float32)
    # fun splitview_get_pos(split : SplitView, mode : SplitModeT) : Float32
    # fun splitview_visible0(split : SplitView, visible : Bool)
    # fun splitview_visible1(split : SplitView, visible : Bool)
    # fun splitview_minsize0(split : SplitView, size : Float32)
    # fun splitview_minsize1(split : SplitView, size : Float32)
  end
end
