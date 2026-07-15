class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.12/brain-darwin-arm64.tar.gz"
      sha256 "4885ca9c1035c50d08a92bb0f0b17be5371f25a29ec42124062cdeb3fcb12154"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.12/brain-darwin-amd64.tar.gz"
      sha256 "bef83ab8a06f8d2aafc80ea9909ff0db42d31f301c0170f6594091e67ff7ffb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.12/brain-linux-arm64.tar.gz"
      sha256 "5c9bf48404859669bf926203d9197aaa2d65e4915e78d848c15a1da0477286ba"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.12/brain-linux-amd64.tar.gz"
      sha256 "16124f9f6744ee378f8e67ef6715b781e6502784b0e724f91d4ecfde3e712254"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
