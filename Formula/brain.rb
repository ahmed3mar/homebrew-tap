class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.34"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.34/brain-0.1.34-macos-arm64.tar.gz"
      sha256 "2dd2e30e05f0cade7378da738b0e960e166dd94d20c10d271c5a428d0711808d"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.34/brain-0.1.34-macos-x64.tar.gz"
      sha256 "43623ca8c07fea62917c5454b044ac64d2cda69310155759918af1b067577b59"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.34/brain-0.1.34-linux-arm64.tar.gz"
      sha256 "ea1b0605e1604211d054c59945ea1577aeddaff3e1dfe76cc22480d2151fd935"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.34/brain-0.1.34-linux-x64.tar.gz"
      sha256 "e99fb55896bc192a76b986d8c01d3fbd9f59c39d9e6819f77bddd804034f0d03"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
