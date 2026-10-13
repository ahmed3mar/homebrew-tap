class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.43"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.43/brain-0.1.43-macos-arm64.tar.gz"
      sha256 "9f9c5385c706129bfddd1395af0a69f3fcb4f9919b4a957fb433aab1ff22b25d"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.43/brain-0.1.43-macos-x64.tar.gz"
      sha256 "67d639061baeeed7f847b3b2941b0d588a64da420eb7acd0bcc882a480c4a9c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.43/brain-0.1.43-linux-arm64.tar.gz"
      sha256 "cd28f88944cc3d31ea80fcfb6028f39d122a5f3d49d126d49ecdad430576e47b"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.43/brain-0.1.43-linux-x64.tar.gz"
      sha256 "a8d18bad17bc9a0200108aa08b42dd3cebb3b76226990187dcf4e115548be8cb"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
