class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.39"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.39/brain-0.1.39-macos-arm64.tar.gz"
      sha256 "a5e9763e457882a57b852d7b0c7f58661cad2361cb772426b17c5105993f1755"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.39/brain-0.1.39-macos-x64.tar.gz"
      sha256 "15309fdc3b91232b6ec683cb0931ecd6c08b907927e39d72091581e81bafe034"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.39/brain-0.1.39-linux-arm64.tar.gz"
      sha256 "a3298942d2a080f0ee234bbed793df720cf9a4d1aa28364772a34129d11503b7"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.39/brain-0.1.39-linux-x64.tar.gz"
      sha256 "176f9da31715669e35be46b3546426a292fe7582104b871deee744d4b089b0f7"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
