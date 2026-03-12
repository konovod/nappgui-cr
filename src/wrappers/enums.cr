module GUI
  macro wrap_enum(our_name, lib_name, &block)
    enum {{our_name}}
      {{block.body}}

      def to_unsafe
        self.unsafe_as(LibGUI::{{lib_name}})
      end

      def self.new(v : LibGUI::{{lib_name}})
        v.unsafe_as(self)
      end
    end
  end

  wrap_enum(Align, AlignT) do
    Left    = 1
    Top     = 1
    Center  = 2
    Right   = 3
    Bottom  = 3
    Justify = 4
  end

  wrap_enum(State, GuiStateT) do
    On
    Off
    Mixed
  end

  wrap_enum(Orientation, GuiOrientT) do
    Horizontal = 1
    Vertical   = 2
  end

  wrap_enum(Device, DeviceT) do
    Desktop = 1
    Phone   = 2
    Tablet  = 3
  end

  wrap_enum(GuiScale, GuiScaleT) do
    Auto     = 1
    None     = 2
    Aspect   = 3
    Aspectdw = 4
  end

  wrap_enum(Ellipsis, EllipsisT) do
    None   = 1
    Begin  = 2
    Middle = 3
    End    = 4
    MLine  = 5
  end

  wrap_enum(GuiCursor, GuiCursorT) do
    Arrow  = 1
    Hand   = 2
    Ibeam  = 3
    Cross  = 4
    Sizewe = 5
    Sizens = 6
    User   = 7
  end

  wrap_enum(SplitMode, SplitModeT) do
    Normal = 1
    Fixed0
    Fixed1
  end

  wrap_enum(GuiFocus, GuiFocusT) do
    Changed  = 1
    Keep
    NoNext
    NoResign
    NoAccept
  end

  @[Flags]
  wrap_enum(FontStyle, FStyle) do
    Normal      =  0
    Bold        =  1
    Italic      =  2
    StrikeOut   =  4
    Underline   =  8
    Subscript   = 16
    Superscript = 32
  end

  wrap_enum(FontSizeMode, FStyle) do
    Pixels =   0
    Points =  64
    Cell   = 128
  end

  # TODO - VKeyT

  alias Color = UInt32
end
