class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.60"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.60/brain-0.1.60-macos-arm64.tar.gz"
      sha256 "c3d7d5c544aa08ec5c508395afa1f0dae7e2ed7b07a81aaaec179c7a93e8b9b7"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.60/brain-0.1.60-macos-x64.tar.gz"
      sha256 "81305e19ce0c1a4d0ab8bc151964e6866c48cd06a0cb8f32213eb9c5500f584d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.60/brain-0.1.60-linux-arm64.tar.gz"
      sha256 "f8e258ac572ddda47fa7c1afe6b82f6f4c78755e4907aafbb04ff1fe1d9bc7df"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.60/brain-0.1.60-linux-x64.tar.gz"
      sha256 "420d00b6d9cb49d7ab83539ca5dc3e679d427c830d7d8a2712f23b15ad323094"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
