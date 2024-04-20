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
require "./src/nappgui-cr"

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
    window2 = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "This is a second window")
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
    window = GUI::Window.new(2 + 4 + 8 + 16 + 32, title: "Hello, World!", origin: v2df(500, 200))
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

more highlevel dsl is WIP

## Development


 - [ ] Low level wrappers
    - [x] button
    - [ ] cell
    - [ ] combo
    - [ ] comwin
    - [x] edit
    - [x] imageview
    - [x] label
    - [ ] layout - started
    - [ ] listbox
    - [ ] menu
    - [ ] menuitem
    - [ ] panel
    - [x] popup
    - [x] progress
    - [x] slider
    - [ ] splitview
    - [ ] tableview
    - [ ] textview - started
    - [ ] updown
    - [ ] view
    - [ ] window - started
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
