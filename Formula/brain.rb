class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.33"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.33/brain-0.1.33-macos-arm64.tar.gz"
      sha256 "f23f8981f42961a9f050f9892a28b63387089e2e74886b4b8011f35918a3223a"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.33/brain-0.1.33-macos-x64.tar.gz"
      sha256 "fee9cc7ba8fc6ffa9aa0ca64ed0ff2afcadafbb88d37e6349e6ef453657cdba7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.33/brain-0.1.33-linux-arm64.tar.gz"
      sha256 "3d24b8c2a5c6cd2002fcfbe2924b0fbe5fa37d65dc34c26505d16211008e810f"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.33/brain-0.1.33-linux-x64.tar.gz"
      sha256 "ce8f429482d3e43f5d87799e84d41518ffd4e2c5b0e061e9c8b8717a56d46401"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
