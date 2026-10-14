class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.48"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.48/brain-0.1.48-macos-arm64.tar.gz"
      sha256 "ab1ad1a27e254432d34b71d26e90e90cc798a58da1f2fa7bbb64824c1c849e10"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.48/brain-0.1.48-macos-x64.tar.gz"
      sha256 "fa70293be89d8effba5e2a3b9c45a9b7e5223d49fc30dbc23f281b1e83e0649e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.48/brain-0.1.48-linux-arm64.tar.gz"
      sha256 "0c6d61b527b97d7e87532d28060673c973b69a78afd21030365790dc67a7091b"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.48/brain-0.1.48-linux-x64.tar.gz"
      sha256 "58a2f34752ee1024a7c54e79191fe136c303b2b476ef8f95f28f22e7b3c13a48"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
