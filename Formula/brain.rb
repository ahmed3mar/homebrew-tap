class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.22/brain-0.1.22-macos-arm64.tar.gz"
      sha256 "29215a50df8052f212b3bf673fbd81ef5bc3541431693abd0d373c9950c9b5ab"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.22/brain-0.1.22-macos-x64.tar.gz"
      sha256 "334395dfa7ff90f8b4902592111631d98b1efb050421e1ab1678f8d9f9779407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.22/brain-0.1.22-linux-arm64.tar.gz"
      sha256 "8a8b775238bf05e69fa7f0896b3982ddf7e8158c2f2d7a73c78fd010cc7e260f"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.22/brain-0.1.22-linux-x64.tar.gz"
      sha256 "df575c26f741a6c5b721949c33df7611777170331c153fd89007c0f72ca57609"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
