class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.49"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.49/brain-0.1.49-macos-arm64.tar.gz"
      sha256 "6864d39a4d3e56616010fa703192fd2eef0a61cecb8885b70c91b7c14928a0e5"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.49/brain-0.1.49-macos-x64.tar.gz"
      sha256 "e0fe0e1ddf0ff24552148dd4befdb3b4bf1eeb8d1bafd5602cff2af1bd806ae2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.49/brain-0.1.49-linux-arm64.tar.gz"
      sha256 "96d2608982e18a253873d6af229a8cca415cfd60ddbf6daeef8f03c86fb3b1f8"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.49/brain-0.1.49-linux-x64.tar.gz"
      sha256 "7f6e29808122736466cca60c883829b71f90b10a70e966c6e1aeb1baaba2eaa7"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
