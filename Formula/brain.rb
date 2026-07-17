class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.16/brain-darwin-arm64.tar.gz"
      sha256 "db2f831cf6d0950fc0a8aecca7d623123e1808b05156e68e3907c6efe1176099"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.16/brain-darwin-amd64.tar.gz"
      sha256 "37f45a89e515628054cfea92e68e7982fcb155393458d0f4205ae4bb617729c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.16/brain-linux-arm64.tar.gz"
      sha256 "024b0b8d766cffb8b67130041e20bdbc66b655f599f59998ede8ffeef860828b"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.16/brain-linux-amd64.tar.gz"
      sha256 "879c9770421262fa2ee8f8d4348c2638fb2fd1a39f7cd8472159543db4ce4b34"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
