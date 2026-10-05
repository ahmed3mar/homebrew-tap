class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.26/brain-0.1.26-macos-arm64.tar.gz"
      sha256 "2080cb14718087eb608543e7bba050335c72dc9138aa421662caa9183d745233"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.26/brain-0.1.26-macos-x64.tar.gz"
      sha256 "13f06335975eb13238b96737a8910631c6b10906f2fbfabf1393728426d60771"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.26/brain-0.1.26-linux-arm64.tar.gz"
      sha256 "90e6dfedf5d0ea984836c038deb09123ecbe5c9ecf15a4f338c8b5566a707581"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.26/brain-0.1.26-linux-x64.tar.gz"
      sha256 "9cb4d366812c01cf72bb992845579133844b0ba9b3bf40e1af92f1b86516680b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
