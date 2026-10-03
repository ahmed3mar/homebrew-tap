class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.21/brain-0.1.21-macos-arm64.tar.gz"
      sha256 "4da3202588248e32a7f4fa15d8a0c1c24f6a5f1ebbf227ad2d7afd1d40b53c02"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.21/brain-0.1.21-macos-x64.tar.gz"
      sha256 "83386c6a1669e182ecd19f6ca811cdce5192cb4dc3ff6419749f530d7ebd5f14"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.21/brain-0.1.21-linux-arm64.tar.gz"
      sha256 "4755ef5866fca70ac1dcf6ccf05626e6360fc7dda883449e64a07e09405a22df"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.21/brain-0.1.21-linux-x64.tar.gz"
      sha256 "2c219e88f4bfbda03e9748ffed2a3cff860fcf1d54db78cee2e9859b4f1db4bf"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
