class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.30/brain-0.1.30-macos-arm64.tar.gz"
      sha256 "fbb69a111f406a93c74d20a9e36041bd60357010b7f395d9da0395b9c57245d9"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.30/brain-0.1.30-macos-x64.tar.gz"
      sha256 "a8ab2e489f45eb1940325b60e74727161410b8cce9125985854150c82460e9f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.30/brain-0.1.30-linux-arm64.tar.gz"
      sha256 "4573981b77f68cd15b48c67b9c5a4be805578c04b7e80ab1928d9355155e7cd7"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.30/brain-0.1.30-linux-x64.tar.gz"
      sha256 "43d481ecf82ac8f280866a4a4ad189f28a4dd9235e92cb2ea446e07464eecabc"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
