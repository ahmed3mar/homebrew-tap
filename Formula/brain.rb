class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.27/brain-0.1.27-macos-arm64.tar.gz"
      sha256 "874f16f2dbb490fdab0442432d62a827d4d77ec5bb323e4548fce64cdd161d51"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.27/brain-0.1.27-macos-x64.tar.gz"
      sha256 "257de524bb49c979a93a25c4dd673faa3c3d1e4376c09912f2bdbfbf4a5d7fa5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.27/brain-0.1.27-linux-arm64.tar.gz"
      sha256 "e7dab8bdbc426260fde64e0f8d2d4eaa8854eaef59358757af09d65c9f9a86cc"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.27/brain-0.1.27-linux-x64.tar.gz"
      sha256 "596c1a0de04126d8a96baead9e463e3c87c30a91db9998bc14d50a64ca7142dd"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
