class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.19/brain-0.1.19-macos-arm64.tar.gz"
      sha256 "91a3e63c4d93337ceb461ba87889780b283802cfded1896341b7f7ab5b19fb68"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.19/brain-0.1.19-macos-x64.tar.gz"
      sha256 "d3cadd995f154545df829059c108a92db9dce48ecbee7659c876a3cd2650a6b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.19/brain-0.1.19-linux-arm64.tar.gz"
      sha256 "c580f6e88a053e710cd503119502616886a9eb67bd4e29b908b5a16bcd65e534"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.19/brain-0.1.19-linux-x64.tar.gz"
      sha256 "e6819b90c3edb49bf50b27d643d73540b0e058712d9b818855b59822f339a365"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
