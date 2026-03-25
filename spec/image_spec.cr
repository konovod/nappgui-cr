require "./spec_helper"

TEST_IMAGE = "examples/res/disk24.png"

describe GUI::Image do
  describe ".from_file" do
    it "loads image from file path" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.should be_a(GUI::Image)
      image.not_nil!.width.should eq(24)
      image.not_nil!.height.should eq(24)
      image.not_nil!.free
    end

    it "returns nil for non-existent file" do
      image = GUI::Image.from_file("non_existent_file.png")
      image.should be_nil
    end
  end

  describe "#clone" do
    it "creates a copy of the image" do
      image = GUI::Image.from_file(TEST_IMAGE)
      cloned = image.not_nil!.clone
      cloned.width.should eq(image.not_nil!.width)
      cloned.height.should eq(image.not_nil!.height)
      image.not_nil!.free
      cloned.free
    end
  end

  describe "#width" do
    it "returns image width in pixels" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.width.should eq(24)
      image.not_nil!.free
    end
  end

  describe "#height" do
    it "returns image height in pixels" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.height.should eq(24)
      image.not_nil!.free
    end
  end

  describe "#size" do
    it "returns width and height as tuple" do
      image = GUI::Image.from_file(TEST_IMAGE)
      w, h = image.not_nil!.size
      w.should eq(24)
      h.should eq(24)
      image.not_nil!.free
    end
  end

  describe "#format" do
    it "returns pixel format" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.format.should be_a(GUI::PixelFormat)
      image.not_nil!.free
    end
  end

  describe "#mem" do
    it "returns memory size in bytes" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.mem.should be > 0
      image.not_nil!.free
    end
  end

  describe "#codec" do
    it "returns the codec" do
      image = GUI::Image.from_file(TEST_IMAGE)
      codec = image.not_nil!.codec
      codec.should be_a(GUI::ImageCodec)
      image.not_nil!.free
    end
  end

  describe "#num_frames" do
    it "returns 1 for static images" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.num_frames.should eq(1)
      image.not_nil!.free
    end
  end

  describe "#trim" do
    it "creates a cropped image" do
      image = GUI::Image.from_file(TEST_IMAGE)
      trimmed = image.not_nil!.trim(0, 0, 12, 12)
      trimmed.width.should eq(12)
      trimmed.height.should eq(12)
      image.not_nil!.free
      trimmed.free
    end
  end

  describe "#scale" do
    it "creates a scaled image" do
      image = GUI::Image.from_file(TEST_IMAGE)
      scaled = image.not_nil!.scale(48, 48)
      scaled.width.should eq(48)
      scaled.height.should eq(48)
      image.not_nil!.free
      scaled.free
    end
  end

  describe "#scale_to_width" do
    it "scales image keeping aspect ratio" do
      image = GUI::Image.from_file(TEST_IMAGE)
      scaled = image.not_nil!.scale_to_width(48)
      scaled.width.should eq(48)
      image.not_nil!.free
      scaled.free
    end
  end

  describe "#scale_to_height" do
    it "scales image keeping aspect ratio" do
      image = GUI::Image.from_file(TEST_IMAGE)
      scaled = image.not_nil!.scale_to_height(48)
      scaled.height.should eq(48)
      image.not_nil!.free
      scaled.free
    end
  end

  describe "#rotate" do
    it "creates a rotated image" do
      image = GUI::Image.from_file(TEST_IMAGE)
      rotated = image.not_nil!.rotate(0.785_f32)
      rotated.should be_a(GUI::Image)
      image.not_nil!.free
      rotated.free
    end
  end

  describe "#save" do
    it "saves image to file" do
      image = GUI::Image.from_file(TEST_IMAGE)
      result = image.not_nil!.save("spec/test_output.png")
      result.should be_true
      image.not_nil!.free
      File.delete("spec/test_output.png")
    end

    it "saves image with different codec" do
      image = GUI::Image.from_file(TEST_IMAGE)
      result = image.not_nil!.save("spec/test_output.bmp", GUI::ImageCodec::BMP)
      result.should be_true
      image.not_nil!.free
      # File.delete("spec/test_output.bmp")
    end
  end

  describe "#native" do
    it "returns native handle pointer" do
      image = GUI::Image.from_file(TEST_IMAGE)
      ptr = image.not_nil!.native
      ptr.should be_a(Pointer(Void))
      image.not_nil!.free
    end
  end

  describe "#free" do
    it "can be called multiple times without error" do
      image = GUI::Image.from_file(TEST_IMAGE)
      image.not_nil!.free
      image.not_nil!.free
    end
  end
end
