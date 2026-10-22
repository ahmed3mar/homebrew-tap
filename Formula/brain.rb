class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.58"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.58/brain-0.1.58-macos-arm64.tar.gz"
      sha256 "8beab930614b9cd4a85547c32fb544cae6ffca2919cfa763ddf9432035a77331"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.58/brain-0.1.58-macos-x64.tar.gz"
      sha256 "391159327b162ea54f03f19f52a709b0cee7fff12321993a1d13ef7065c30f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.58/brain-0.1.58-linux-arm64.tar.gz"
      sha256 "39a3568645662e7bfb32c91aa2c531fe4a59acb228b4e77184a1bbc4653777c5"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.58/brain-0.1.58-linux-x64.tar.gz"
      sha256 "5d18bb928a8536a75ae98d50d452565aec6ff34eb689f4cfab0e05c4068b65bf"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
