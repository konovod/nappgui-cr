# nappgui-cr

Crystal wrappers for NAppGUI library (https://nappgui.com/)
WIP, preprealpha version

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     nappgui-cr:
       github: konovod/nappgui-cr
   ```

dll and libs for Windows are currently included in repository, but you may need to update them to latest version.
See https://nappgui.com/ for building instructions

2. Run `shards install`

## Usage

lowlevel example (https://github.com/konovod/nappgui-cr/blob/master/lowlevel_example.cr)

```crystal
require "nappgui-cr"

# inherit from GUI::Application class
class SimpleApp < GUI::Application
  @counter = 0

  # This fuction returns application main window
  # All gui layouts should be created here
  def gui : GUI::Window
    # create layout to place controls
    layout = GUI::Layout.new(1, 6, margin: 5)

    # create label
    label = GUI::Label.new(text: "Hello!, I'm a label")
    label.place(layout, 0, 0)

    # create button
    button = GUI::Button.new(:push, text: "Click Me!")
    button.place(layout, 0, 1)

    # create textview (multiline input)
    text = GUI::TextView.new
    text.place(layout, 0, 2)

    # create slider
    slider = GUI::Slider.new(vertical: false)
    slider.place(layout, 0, 3)
    progress = GUI::Progress.new
    progress.place(layout, 0, 4)

    # assign slider event
    slider.on_moved do
      progress.value = slider.value
    end

    # assign button on_click
    button.on_click do
      text.write("Button click (#{@counter})\n")
      @counter += 1
    end

    # create second window
    window2 = GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STD, title: "This is a second window")
    # otherwise it won't close
    window2.on_close do
      true
    end

    # create button to show second window
    button2 = GUI::Button.new(:push, text: "Second window")
    button2.on_click do
      window2.show
    end
    button2.place(layout, 0, 5)

    # configure layout sizes and margins
    layout.cols[0].size = 250
    layout.rows[2].size = 100
    layout.rows[0].margin = 5
    layout.rows[1].margin = 5

    # create a panel, place a layout to it, create a window, place a panel to it
    panel = LibGUI.panel_create
    LibGUI.panel_layout(panel, layout)
    window = GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STDRES, title: "Hello, World!", origin: v2df(500, 200))
    window.panel = panel
    # return created window
    window
  end

  def init
    # this is called after gui initialization but before showing window
    puts "init"
  end

  def done
    # this is called after application finished
    puts "done"
  end
end

# run the application
SimpleApp.new.run
```

highlevel DSL is WIP, this is how it currently looks:

```crystal
require "nappgui-cr"
# highlevel dsl, not required by default
require "nappgui-cr/layout_dsl"

# inherit from GUI::Application class
class SimpleApp < GUI::Application
  @counter = 0

  # This function returns application main window
  # All gui layouts should be created here using DSL
  def gui : GUI::Window
    # create window with DSL - pass window options as named args
    # blocks passed to window contain rows or columns of widgets
    window(origin: v2df(500, 200), title: "Hello, World!", flags: LibGUI::WindowFlag::EkWINDOW_STD) do
      space 5  # margin before first row. also by convention `space` call before any widgets is applied by default.

      # create a column layout - widgets are stacked vertically
      column do
        # create textview (multiline input)
        text = textview(size: s2df(250, 100))

        # create slider and progress
        slider = slider(vertical: false)
        progress = progress()

        # connect slider to progress bar
        slider.on_moved { progress.value = slider.value }

        # create button
        button = button(GUI::Button::Style::Push, text: "Click Me!")

        # assign button on_click event
        button.on_click do
          text.write("Button click (#{@counter})\n")
          @counter += 1
        end

        # create second window button
        button2 = button(GUI::Button::Style::Push, text: "Second window")
        button2.on_click do
          window2.show
        end
      end
    end
  end

  # this is called after gui initialization but before showing window
  def init
    puts "init"
  end

  # this is called after application finished
  def done
    # clean up second window
    if w = @window2
      w.destroy
    end
    puts "done"
  end

  # lazily create second window when needed
  @window2 : GUI::Window?

  private def window2
    @window2 ||= GUI::Window.new(LibGUI::WindowFlag::EkWINDOW_STD, title: "Second window").tap do |w|
      w.on_close { true }
    end
  end
end

# run the application
SimpleApp.new.run
```

## Development

- [ ] Low level wrappers
  - [x] button
  - [x] button
  - [ ] cell
  - [x] combo
  - [ ] comwin
  - [x] edit
  - [ ] globals
  - [ ] gui
  - [ ] evbind
  - [x] imageview
  - [x] label
  - [x] layout
  - [x] listbox
  - [ ] menu
  - [ ] menuitem
  - [x] panel
  - [x] popup
  - [x] progress
  - [x] slider
  - [x] splitview
  - [x] tableview
  - [x] textview
  - [x] updown
  - [x] view
  - [x] webview
  - [x] window
- [ ] high level wrappers
  - [ ] inner layouts
  - [ ] margins
  - [ ] padding

## Contributing

1. Fork it (<https://github.com/konovod/nappgui-cr/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [konovod](https://github.com/konovod) - creator and maintainer
