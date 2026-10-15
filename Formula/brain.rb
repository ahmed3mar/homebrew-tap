class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.53"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.53/brain-0.1.53-macos-arm64.tar.gz"
      sha256 "964a47c7dcf32608d81dd8cffcf47220d7e80d03a1516c3c1bea681ce4cceeee"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.53/brain-0.1.53-macos-x64.tar.gz"
      sha256 "5bb160523f21d9acc9727555030b0362cec0177b01e30208fa4ba1a7fb7d2f29"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.53/brain-0.1.53-linux-arm64.tar.gz"
      sha256 "661a28e384084845331050bdbdd8eb16a25815de98dfc8e6179ce6fcdbf10415"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.53/brain-0.1.53-linux-x64.tar.gz"
      sha256 "5bf8c3c829eac27b65310ee3873761b551975faa4eadfe12245bce92b55ec881"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
