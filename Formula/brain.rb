class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.52"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.52/brain-0.1.52-macos-arm64.tar.gz"
      sha256 "271ae966d3e4c6a4aad0fbb41722c17ae016992d01ffc897b0795eea19de6186"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.52/brain-0.1.52-macos-x64.tar.gz"
      sha256 "f1a69fb2347c411857756aa60ee138f785ef254206d9675cd43a4d6454039539"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.52/brain-0.1.52-linux-arm64.tar.gz"
      sha256 "31c25e319411a501c171ee17d5f5b40b56e4d8e8c4dbe4357a399ba2dd2e360b"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.52/brain-0.1.52-linux-x64.tar.gz"
      sha256 "661e6617ba795ba21aa70917a8bfd9d3403f7951aa188bc5224eda0899b353bc"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
