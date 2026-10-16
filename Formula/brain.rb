class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.55"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.55/brain-0.1.55-macos-arm64.tar.gz"
      sha256 "b669d5a8865836d33217d6471a749171ae0c51c4bbfe7513a0911daf331dacbb"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.55/brain-0.1.55-macos-x64.tar.gz"
      sha256 "2896153f8936a892cde4dffcf38cb2443108a0ab31b99e87a904beb8577bf4b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.55/brain-0.1.55-linux-arm64.tar.gz"
      sha256 "99fc3768eb59cce9b1eef502ee24a82b18e7fa5b076fcb7664bdd2e1d0e83044"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.55/brain-0.1.55-linux-x64.tar.gz"
      sha256 "c57a4c2fe03ee3c93f296db39cae1a19279ce75d6a752e6c8a13a5da6d524103"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
