class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.14/brain-darwin-arm64.tar.gz"
      sha256 "db52ab6727fd55f8d5cfa54d458d5eeadfa9f887887e5459164cce906dc7a59f"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.14/brain-darwin-amd64.tar.gz"
      sha256 "b4536d2c8d60452315dee8a083b5313dedc5b07f9be2f89ebb68a21c334c7efe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.14/brain-linux-arm64.tar.gz"
      sha256 "36b459ac915af6904f7a120a544c3ffe7e856d4b9382a85ac49a91672e917804"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.14/brain-linux-amd64.tar.gz"
      sha256 "ccdb8488be4d1231a87de9b3245c632a02d8f30d0d08cee51d4e9ae33553f3e8"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
