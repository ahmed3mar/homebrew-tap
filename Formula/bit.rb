class Bit < Formula
  desc "Coding agent with a CLI, TUI, server and desktop app"
  homepage "https://github.com/ahmed3mar/bit"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/bit/releases/download/v0.0.1/bit-0.0.1-macos-arm64.tar.gz"
      sha256 "438ef6dd9cfbef653bdc5c7d6a5e832c4ccd47639909b6c83e28bfe5cd83991d"
    end
    on_intel do
      url "https://github.com/ahmed3mar/bit/releases/download/v0.0.1/bit-0.0.1-macos-x64.tar.gz"
      sha256 "9aca8011a5a7b9a5215966e8f3d6fab81f68c8bf534f7a91b88a841cf10ae455"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/bit/releases/download/v0.0.1/bit-0.0.1-linux-arm64.tar.gz"
      sha256 "013f96b3ca8bc2dccd7db827dd43c0e8f2162d13c5ce978c0da427c582a14664"
    end
    on_intel do
      url "https://github.com/ahmed3mar/bit/releases/download/v0.0.1/bit-0.0.1-linux-x64.tar.gz"
      sha256 "34ffed1a7e18d6c0f26028ed23585f7a1d4887e8f421844a0bf5e726dc95dcaa"
    end
  end

  def install
    bin.install "bit"
  end

  test do
    assert_predicate bin/"bit", :executable?
  end
end
