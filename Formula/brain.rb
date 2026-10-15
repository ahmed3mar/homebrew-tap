class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.50"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.50/brain-0.1.50-macos-arm64.tar.gz"
      sha256 "df7e35ede0bfe2362d5c78b6d6dfdf465f4a9db0cb70cb2ec2f2bb8904a79b15"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.50/brain-0.1.50-macos-x64.tar.gz"
      sha256 "8921c3b9431ff3248efa97a753359cac279133cd7d7caadaa330135d08e81af9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.50/brain-0.1.50-linux-arm64.tar.gz"
      sha256 "63b511fd202967da67998e7a447abb28da852e4c9527e3a072e6006919d87e70"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.50/brain-0.1.50-linux-x64.tar.gz"
      sha256 "289ec7f4d36a86b6f1c6ac63d08a9e4b855535f93c74cf83bb5bd11cd394e283"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
