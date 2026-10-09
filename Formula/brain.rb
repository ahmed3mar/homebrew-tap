class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.36"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.36/brain-0.1.36-macos-arm64.tar.gz"
      sha256 "ddd98152d970e8447d0513ec30ee3c65c45bc70d052b72ef5e975b1f3d0faf1e"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.36/brain-0.1.36-macos-x64.tar.gz"
      sha256 "2c1088506fb6f9f8c78b25c1b66b27d46f6312809e846e7fa0c0ad0fc6299a0b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.36/brain-0.1.36-linux-arm64.tar.gz"
      sha256 "0f2b4043157c391be553721811c2265b3f1b873831fe1e2603ec4058ce1bdfc0"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.36/brain-0.1.36-linux-x64.tar.gz"
      sha256 "00347f1ede1009d387ecb76504df5096271473a748311caad8b0e21b43d25329"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
