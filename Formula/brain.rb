class Brain < Formula
  desc "Brain — collaborative terminal workspace TUI"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.13/brain-darwin-arm64.tar.gz"
      sha256 "90d1e36405bf969de47e06d4e83a9b2abc287e0663ceee54dc97946f521a642f"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.13/brain-darwin-amd64.tar.gz"
      sha256 "6bb3b76b323e192627c31f40dd6c0b13d3e37d11e1a895c046a4d25352fdd95e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.13/brain-linux-arm64.tar.gz"
      sha256 "524f785ce79e3ed4eef6c5aa591ac13cc5f4ac8a5f60252993435db61620b20a"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.13/brain-linux-amd64.tar.gz"
      sha256 "b5b49a08e13ea865a32f8707e67216934b0896b817e514cade10d024bd91f20d"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    system "#{bin}/brain", "version"
  end
end
