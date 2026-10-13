class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.45"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.45/brain-0.1.45-macos-arm64.tar.gz"
      sha256 "e7569473c3cbb070914fe7f647f12cedd4561c19706ded00593f1936b18435e5"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.45/brain-0.1.45-macos-x64.tar.gz"
      sha256 "797af185f9e23b257f17bb2939346a3ac831b85826b2fef4e0f5d3f4153e74fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.45/brain-0.1.45-linux-arm64.tar.gz"
      sha256 "c7b1e39d1163fa324a3ac94fb0ec7bf3a49b185557c3c5b6a4400d8c25546830"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.45/brain-0.1.45-linux-x64.tar.gz"
      sha256 "72b26109e663c6ea9afc641b30242673e616797d08283c8a4d6c6108c1b934fe"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
