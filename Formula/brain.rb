class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.28/brain-0.1.28-macos-arm64.tar.gz"
      sha256 "d371c2c9776e651cca7e7ea76e756c9b4c4dd5d4deee74ea127e72108a48d1f0"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.28/brain-0.1.28-macos-x64.tar.gz"
      sha256 "46c96a8d6c32aab1a8567d1588f84dba435d1821a42417ea3c0648ad5ba88266"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.28/brain-0.1.28-linux-arm64.tar.gz"
      sha256 "aaea23a84741ee4340a50a2da887d67599455f91d06f376118b4770e5e0e2c26"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.28/brain-0.1.28-linux-x64.tar.gz"
      sha256 "3056bc450b472baa732bc4a2c9725b990ff247368892b409f8b963ca3625d8bb"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
