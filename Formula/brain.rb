class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.44"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.44/brain-0.1.44-macos-arm64.tar.gz"
      sha256 "7deeeabf6c8c381ced5144c513644e6795a5dc0e8c846b6a319a61f5c0868540"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.44/brain-0.1.44-macos-x64.tar.gz"
      sha256 "d000af5f0b70ebf6fc60ba626858245d3cff5a89c693db3782f0310b0405b961"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.44/brain-0.1.44-linux-arm64.tar.gz"
      sha256 "9cca6af6c7543a30eb2c5f39f589771c49d0720cb5a991b348a7430d050569ff"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.44/brain-0.1.44-linux-x64.tar.gz"
      sha256 "aced06c985b47a94ffe61c935e137d24236f4c5841e3623c09685f59f832f3ea"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
