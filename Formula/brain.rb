class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.32/brain-0.1.32-macos-arm64.tar.gz"
      sha256 "9c0c22c374f79fb2ab8c34bf16e0a02c0df6f631745aaa762f6ad6a825a3b84c"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.32/brain-0.1.32-macos-x64.tar.gz"
      sha256 "8036d78fab4e37cce71fd8de784f1b6fa3d202f90a64daa775b1a615860983b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.32/brain-0.1.32-linux-arm64.tar.gz"
      sha256 "9846fe548dfaa221e7752c7fa5429a7303b571f91d025c727a16a27980c10f3a"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.32/brain-0.1.32-linux-x64.tar.gz"
      sha256 "ae29d39eb8e3c7c27395aed456fefedd1c51b1246410bac81c2d6ea9cffb6a2c"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
