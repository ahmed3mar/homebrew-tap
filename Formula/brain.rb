class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.54"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.54/brain-0.1.54-macos-arm64.tar.gz"
      sha256 "ff58b7b9b94e1408aa204967fb2f8b889b5273a30703437f3885ff285f162278"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.54/brain-0.1.54-macos-x64.tar.gz"
      sha256 "96bdb5dc66c73c2d306f3883f0997fe0cd2ea3d3c6d0dff48879715b58b4e107"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.54/brain-0.1.54-linux-arm64.tar.gz"
      sha256 "f9e94185e0ce6c8891e1d1835c6a40d112f192858f9a426d39d129287ec0a028"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.54/brain-0.1.54-linux-x64.tar.gz"
      sha256 "f24f2f22ac3dd72bdb7ba09896b7119f7b9ee9e70cf74703c3affe25b3ee8dfd"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
