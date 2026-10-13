class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.46"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.46/brain-0.1.46-macos-arm64.tar.gz"
      sha256 "aa12d694117329634720fb4d0eb69d2c718ebbd5863807aa51ecde93b7cdd127"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.46/brain-0.1.46-macos-x64.tar.gz"
      sha256 "2f17f284bd83492627f130c87a313c416321e83c5ce52380e0d5bf8323c61f72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.46/brain-0.1.46-linux-arm64.tar.gz"
      sha256 "f243d8a9ae435ab986b6a99598129626ba553dd59bd48a9247085cd934597e4c"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.46/brain-0.1.46-linux-x64.tar.gz"
      sha256 "880f9f20f5797eff84d3509253ed8392a3c2698e0664ff2c96ffdbcc0bbecc6d"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
