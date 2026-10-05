class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.23/brain-0.1.23-macos-arm64.tar.gz"
      sha256 "d6498e1ccac5d0a79a610cceba7665cc458c2c42a315034e5653d404fcfc7475"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.23/brain-0.1.23-macos-x64.tar.gz"
      sha256 "96e25a289653677703f6847ed818fd97fdd23aaef723147ac98cfbadafd89e0a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.23/brain-0.1.23-linux-arm64.tar.gz"
      sha256 "62ce7fe52bf21deeeec6145468902cb0141be01caae927f15634b9693abf226a"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.23/brain-0.1.23-linux-x64.tar.gz"
      sha256 "eb03ee878bb50734923122637fb4407ed598b4ecd9495321db0f401c663757dc"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
