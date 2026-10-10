class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.37"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.37/brain-0.1.37-macos-arm64.tar.gz"
      sha256 "68821c49efcf6f0c71fe9104fb70663f1aca82f7823875103afab0aabb6bf0ba"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.37/brain-0.1.37-macos-x64.tar.gz"
      sha256 "5fd27dfbebdb6acf95204a91422c59ca8ea48c5e4d195ead216a0b84b704a69f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.37/brain-0.1.37-linux-arm64.tar.gz"
      sha256 "9aaff5e1a22c16d15204629e6c6ec9d4321527d36d39e649c683b08d2e4ccb12"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.37/brain-0.1.37-linux-x64.tar.gz"
      sha256 "b4fde750d9cdb580af54cfbdb746201387e23f0206a5929dd638b357253cc2d1"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
