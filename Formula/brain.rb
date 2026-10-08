class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.29/brain-0.1.29-macos-arm64.tar.gz"
      sha256 "ad671811373abf3d376453725b6d3a36c4b9f5820bdde1abe2c39e1fd0350dec"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.29/brain-0.1.29-macos-x64.tar.gz"
      sha256 "95cb0ce8ee1200e1be1f05425f5a1c2d21e683d73f5cd0cc323e3fb8d785071e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.29/brain-0.1.29-linux-arm64.tar.gz"
      sha256 "eea14ac14af2e15562707befb3dfa83d678dce400c8e780b7984897f360476b7"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.29/brain-0.1.29-linux-x64.tar.gz"
      sha256 "385e4cb6213e92db2980ca4b611bb68a69b54bbbabad309f33ec88d3ee404ddb"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
