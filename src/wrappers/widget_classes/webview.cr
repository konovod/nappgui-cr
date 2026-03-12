module GUI
  class WebView < Widget
    @raw : LibGUI::WebView

    def initialize(**args)
      @raw = webview_create
      apply_args(**args)
    end

    define_place

    event(on_focus)
    lib_setter(tooltip, String)
    lib_setter(size)

    lib_function(navigate, url : String)
    lib_function(back)
    lib_function(forward)
  end
end
