class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.11/brain-darwin-arm64.tar.gz"
      sha256 "94c8b9a08cbe45ebca9b5b1dcf18eb2a5b4370643a556e74bc8c7515025bcfa3"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.11/brain-darwin-amd64.tar.gz"
      sha256 "6b5cf039b4293da4f0d6a81be0037074127aa8594967f02bf3c28593575eadf2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.11/brain-linux-arm64.tar.gz"
      sha256 "b4a3f43ca1a416aa19b93ed19b3809fd0051070731203da9193879c3e41d334e"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.11/brain-linux-amd64.tar.gz"
      sha256 "8fb39a01c53cc4a44ae20683d3711363becbdf08049e978625ec089bebb4774e"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
