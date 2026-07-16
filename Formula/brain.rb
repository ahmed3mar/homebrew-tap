class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.15/brain-darwin-arm64.tar.gz"
      sha256 "fb88939691f7541f582c199307635bed465c44f818dab859cd098fa815c427fb"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.15/brain-darwin-amd64.tar.gz"
      sha256 "d1ae33ed96c5e653dfd87bb618b55b4ba1bce91f40041f15a15d1f99d7c8af99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.15/brain-linux-arm64.tar.gz"
      sha256 "2f5c11f19301fd795b5656f59438da669f40067a80517de533f6ddf064c35db0"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.15/brain-linux-amd64.tar.gz"
      sha256 "0d5c5c6733d833eec5ebcd01a8849daa67a33ce26f0a851b6259c1af89ed811b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
