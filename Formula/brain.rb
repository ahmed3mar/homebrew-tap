class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.47"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.47/brain-0.1.47-macos-arm64.tar.gz"
      sha256 "1aa38ebb384f276a5682739df1e21f8e5ca4384c40523c9194321d20a4f2a208"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.47/brain-0.1.47-macos-x64.tar.gz"
      sha256 "8b9ba935ec02726e4b85ee2641f5ceeaf98f7480b425188f69def39c319a12bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.47/brain-0.1.47-linux-arm64.tar.gz"
      sha256 "f445a02b92c30cd233910c82cc40fddc672722d3e5bb0a91e12ab55cc3c5ce43"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.47/brain-0.1.47-linux-x64.tar.gz"
      sha256 "935ceaf52a62d0c966da6582e808328379803898bd8ef3ff1f00cc9322466b8e"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
