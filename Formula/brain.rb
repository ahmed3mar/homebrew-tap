class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.40"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.40/brain-0.1.40-macos-arm64.tar.gz"
      sha256 "7751f8c1d76f3544b4e23c294bd9214100b51fa34e86c1bbeac22e0a5aeae024"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.40/brain-0.1.40-macos-x64.tar.gz"
      sha256 "b17a6d060737e9bc04c8ee214c3346546ddd2b954ff1aad7398ddfc7bcca0cb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.40/brain-0.1.40-linux-arm64.tar.gz"
      sha256 "d4f17869672b88d8859fe042f2151383cb7cbb3085e914e4aaad928dd55273e4"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.40/brain-0.1.40-linux-x64.tar.gz"
      sha256 "cda771c0db3552719b26892e57a60f1174829c59ab5e7b70e846b630bcabd199"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
