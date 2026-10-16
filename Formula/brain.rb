class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.56"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.56/brain-0.1.56-macos-arm64.tar.gz"
      sha256 "14701e880fe6caa1503d491d88202fefa470bed3ed0da0f0dfc8af4afbdfcac1"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.56/brain-0.1.56-macos-x64.tar.gz"
      sha256 "88afa446184bd86f5d5e044ef10ae1d33cababeb373d625950e7dc11fe01b057"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.56/brain-0.1.56-linux-arm64.tar.gz"
      sha256 "e3f82ba55e12aa4fd32b20113490d14ae20c6692a32fae9efef941a743f0bc6a"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.56/brain-0.1.56-linux-x64.tar.gz"
      sha256 "621bae598ab118e24222317111f63750551b4b6d84b8266d7f2c752d64afcd2b"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
