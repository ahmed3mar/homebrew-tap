class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.41"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.41/brain-0.1.41-macos-arm64.tar.gz"
      sha256 "f782521b1759c19817e494b9ca78c2ede9aa26a196835368b6c2758e41db18c7"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.41/brain-0.1.41-macos-x64.tar.gz"
      sha256 "248b82430565433acd93236b614d0696feddb1386fa536eb54cd5c342f2cc471"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.41/brain-0.1.41-linux-arm64.tar.gz"
      sha256 "cb8be1f66be5de94c8dc8d6f57334d08562ecb73b831ea999a1ba45665b05456"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.41/brain-0.1.41-linux-x64.tar.gz"
      sha256 "a5d5de023ba23bb1c25ae3e61d141e2c7e27a5547c0b5e4b0fe780426c83c3c8"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
