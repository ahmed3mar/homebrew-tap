class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.57"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.57/brain-0.1.57-macos-arm64.tar.gz"
      sha256 "23221cbdabafc2ba7ed05d3362f8b0554783595bcd28ac7807448a2aaa52a6db"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.57/brain-0.1.57-macos-x64.tar.gz"
      sha256 "3cb95ec1cdc19b95b77ba93c6f6ace519267223eccb165f71e87fb14ad84c2e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.57/brain-0.1.57-linux-arm64.tar.gz"
      sha256 "bed636a3ef5f658d795f15c11dde2c8267f69d06cb1a8bc549b2b8bf67754eae"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.57/brain-0.1.57-linux-x64.tar.gz"
      sha256 "ef5997eda067e0fe7ca25960580f164c8719e62b9640bf8300dba47c20e732ac"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
