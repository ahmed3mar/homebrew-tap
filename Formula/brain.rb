class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.59"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.59/brain-0.1.59-macos-arm64.tar.gz"
      sha256 "bf132b18fa9ba5819d0fde9e5eacf7af43c033a4c223128f5d600415bfef54e0"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.59/brain-0.1.59-macos-x64.tar.gz"
      sha256 "71385b13d7e474be54feb6c7baddf5335995b1337047bdea3b0b43e468811dff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.59/brain-0.1.59-linux-arm64.tar.gz"
      sha256 "9134e5b8c572798839676b87057e0698b69d8f4e94d0d5d8d6c71b063b1176a4"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.59/brain-0.1.59-linux-x64.tar.gz"
      sha256 "8758df1e96ab35147e50a44f8330ed45b63d0467a2404fd2af3088c285145e2e"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
