require "./spec_helper"

describe GUI::Font do
  describe ".new" do
    it "creates a system font with default settings" do
      font = GUI::Font.new
      font.should be_a(GUI::Font)
      font.free
    end

    it "creates a font with size and style" do
      font = GUI::Font.new(12.0_f32, GUI::FontStyle::Normal, GUI::FontSizeMode::Pixels)
      font.should be_a(GUI::Font)
      font.size.should eq(12.0_f32)
      font.style.should eq(GUI::FontStyle::Normal)
      font.free
    end

    it "creates a font with family and size" do
      font = GUI::Font.new("Arial", 14.0_f32, GUI::FontStyle::Bold, GUI::FontSizeMode::Points)
      font.should be_a(GUI::Font)
      font.family.should eq("Arial")
      font.style.should eq(GUI::FontStyle::Bold)
      font.free
    end

    it "creates a font using pixels named argument" do
      font = GUI::Font.new(pixels: 16.0_f32)
      font.should be_a(GUI::Font)
      font.size.should eq(16.0_f32)
      font.units.should eq(GUI::FontSizeMode::Pixels)
      font.free
    end

    it "creates a font using cell named argument" do
      font = GUI::Font.new(cell: 10.0_f32, style: GUI::FontStyle::Italic)
      font.should be_a(GUI::Font)
      font.size.should eq(10.0_f32)
      font.style.should eq(GUI::FontStyle::Italic)
      font.units.should eq(GUI::FontSizeMode::Cell)
      font.free
    end

    it "creates a font using points named argument" do
      font = GUI::Font.new(points: 12.0_f32)
      font.should be_a(GUI::Font)
      font.size.should eq(12.0_f32)
      font.units.should eq(GUI::FontSizeMode::Points)
      font.free
    end

    it "creates a font with family using pixels named argument" do
      font = GUI::Font.new("Arial", pixels: 14.0_f32)
      font.should be_a(GUI::Font)
      font.family.should eq("Arial")
      font.size.should eq(14.0_f32)
      font.free
    end

    it "creates a font with family using cell named argument" do
      font = GUI::Font.new("Courier New", cell: 8.0_f32, style: GUI::FontStyle::Bold)
      font.should be_a(GUI::Font)
      font.family.should eq("Courier New")
      font.style.should eq(GUI::FontStyle::Bold)
      font.units.should eq(GUI::FontSizeMode::Cell)
      font.free
    end

    it "creates a font with family using points named argument" do
      font = GUI::Font.new("Times New Roman", points: 14.0_f32, style: GUI::FontStyle::Italic)
      font.should be_a(GUI::Font)
      font.family.should eq("Times New Roman")
      font.style.should eq(GUI::FontStyle::Italic)
      font.units.should eq(GUI::FontSizeMode::Points)
      font.free
    end
  end

  describe ".regular_size" do
    it "returns a positive float32 value" do
      size = GUI::Font.regular_size
      size.should be > 0.0_f32
      size.should be_a(Float32)
    end
  end

  describe ".small_size" do
    it "returns a positive float32 value" do
      size = GUI::Font.small_size
      size.should be > 0.0_f32
      size.should be_a(Float32)
    end
  end

  describe ".mini_size" do
    it "returns a positive float32 value" do
      size = GUI::Font.mini_size
      size.should be > 0.0_f32
      size.should be_a(Float32)
    end
  end

  describe ".exists_family" do
    it "returns true for common font families" do
      GUI::Font.exists_family("Arial").should be_true
      GUI::Font.exists_family("Courier New").should be_true
    end

    it "returns false for non-existent font families" do
      GUI::Font.exists_family("NonExistentFont12345").should be_false
    end
  end

  describe ".monospace" do
    it "creates a monospace font" do
      font = GUI::Font.monospace(12, GUI::FontStyle::Normal, GUI::FontSizeMode::Pixels)
      font.should be_a(GUI::Font)
      font.monospace?.should be_true
      font.free
    end
  end

  describe "#with_style" do
    it "returns a new font with the specified style" do
      font = GUI::Font.new(12.0_f32)
      bold_font = font.with_style(GUI::FontStyle::Bold)
      bold_font.style.should eq(GUI::FontStyle::Bold)
      font.free
      bold_font.free
    end
  end

  describe "#with_width" do
    it "returns a new font with the specified width" do
      font = GUI::Font.new(12.0_f32)
      wide_font = font.with_width(150.0_f32)
      wide_font.xscale.should be > 1.0_f32
      font.free
      wide_font.free
    end
  end

  describe "#with_xscale" do
    it "returns a new font with the specified xscale" do
      font = GUI::Font.new(12.0_f32)
      scaled_font = font.with_xscale(2.0_f32)
      scaled_font.xscale.should eq(2.0_f32)
      font.free
      scaled_font.free
    end
  end

  describe "#clone" do
    it "returns an equal copy of the font" do
      font = GUI::Font.new(12.0_f32)
      cloned = font.clone
      cloned.should eq(font)
      font.free
      cloned.free
    end
  end

  describe "#==" do
    it "returns true for equal fonts" do
      font1 = GUI::Font.new(12.0_f32)
      font2 = font1.clone
      (font1 == font2).should be_true
      font1.free
      font2.free
    end

    it "returns false for different fonts" do
      font1 = GUI::Font.new(12.0_f32)
      font2 = GUI::Font.new(14.0_f32)
      (font1 == font2).should be_false
      font1.free
      font2.free
    end
  end

  describe "#family" do
    it "returns the font family name" do
      font = GUI::Font.new("Arial", 14.0_f32)
      font.family.should eq("Arial")
      font.free
    end
  end

  describe "#size" do
    it "returns the font size" do
      font = GUI::Font.new(16.5_f32)
      font.size.should eq(16.5_f32)
      font.free
    end
  end

  describe "#height" do
    it "returns a positive value" do
      font = GUI::Font.new(12.0_f32)
      font.height.should be > 0.0_f32
      font.free
    end
  end

  describe "#width" do
    it "returns a positive value" do
      font = GUI::Font.new(12.0_f32)
      font.width.should be > 0.0_f32
      font.free
    end
  end

  describe "#xscale" do
    it "returns 1.0 for default font" do
      font = GUI::Font.new(12.0_f32)
      font.xscale.should eq(1.0_f32)
      font.free
    end
  end

  describe "#ascent" do
    it "returns a positive value" do
      font = GUI::Font.new(12.0_f32)
      font.ascent.should be > 0.0_f32
      font.free
    end
  end

  describe "#descent" do
    it "returns a positive value" do
      font = GUI::Font.new(12.0_f32)
      font.descent.should be > 0.0_f32
      font.free
    end
  end

  describe "#leading" do
    it "returns a non-negative value" do
      font = GUI::Font.new(12.0_f32)
      font.leading.should be >= 0.0_f32
      font.free
    end
  end

  describe "#monospace?" do
    it "returns false for regular fonts" do
      font = GUI::Font.new(12.0_f32)
      font.monospace?.should be_false
      font.free
    end

    it "returns true for monospace fonts" do
      font = GUI::Font.monospace(12)
      font.monospace?.should be_true
      font.free
    end
  end

  describe "#style" do
    it "returns the font style" do
      font = GUI::Font.new(12.0_f32, GUI::FontStyle::Bold)
      font.style.should eq(GUI::FontStyle::Bold)
      font.free
    end
  end

  describe "#units" do
    it "returns the font size mode" do
      font = GUI::Font.new(pixels: 12.0_f32)
      font.units.should eq(GUI::FontSizeMode::Pixels)
      font.free
    end
  end

  describe "#extents" do
    it "returns width and height for text" do
      font = GUI::Font.new(12.0_f32)
      width, height = font.extents("Hello World")
      width.should be > 0.0_f32
      height.should be > 0.0_f32
      font.free
    end

    it "accepts a reference width parameter" do
      font = GUI::Font.new(12.0_f32)
      width, height = font.extents("Hello World", 100.0_f32)
      width.should be > 0.0_f32
      height.should be > 0.0_f32
      font.free
    end
  end

  describe "#native_handle" do
    it "returns a pointer" do
      font = GUI::Font.new(12.0_f32)
      ptr = font.native_handle
      ptr.should be_a(Pointer(Void))
      font.free
    end
  end

  describe "#free" do
    it "can be called multiple times without error" do
      font = GUI::Font.new(12.0_f32)
      font.free
      font.free
    end
  end

  describe ".installed_families" do
    it "can be called without error" do
      arr = GUI::Font.installed_families
      arr.size.should be > 0
      arr.index("Arial").should be_truthy
      arr.index("NonExistentFont12345").should be_nil
    end
  end
  describe ".installed_monospace" do
    it "can be called without error" do
      arr = GUI::Font.installed_monospace
      arr.size.should be > 0
      arr.index("Arial").should be_nil
      arr.index("Courier New").should be_truthy
    end
  end
end
