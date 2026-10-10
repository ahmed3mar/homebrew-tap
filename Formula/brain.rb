class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.38"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.38/brain-0.1.38-macos-arm64.tar.gz"
      sha256 "5d3d1bd5622770b714b34c2bfaa89c5934faa09d8673eee267f4d72c37e55af4"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.38/brain-0.1.38-macos-x64.tar.gz"
      sha256 "556eac2f831bb7efcc0b2bb4f53d2e7b8b73e25ca5fa23af72bf3357fde888d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.38/brain-0.1.38-linux-arm64.tar.gz"
      sha256 "858d5a09eceb92d4daff9e4cac881cfa66af758e3eb39529d510638056960934"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.38/brain-0.1.38-linux-x64.tar.gz"
      sha256 "f4114bfa4c533dc152f04eda26db5577c83f8adc9dda7c3ab919e82529bf90d0"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
