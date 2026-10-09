class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.35"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.35/brain-0.1.35-macos-arm64.tar.gz"
      sha256 "2d770feb3dc2626d265bd6df3c054ebf5efb3203efbfb369112888cca9ee5f44"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.35/brain-0.1.35-macos-x64.tar.gz"
      sha256 "e9620ea399e357834ab26144e122e240824f9342c95f043fd4ab1aab4af11540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.35/brain-0.1.35-linux-arm64.tar.gz"
      sha256 "75c9ec409f6df282a5a412a313991bae71064c3ceaaa8388bd16917858a29b2f"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.35/brain-0.1.35-linux-x64.tar.gz"
      sha256 "59e6456ef64cfc9f001c65269104fcb40087ac907f5dec47ab2e089206a762be"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
