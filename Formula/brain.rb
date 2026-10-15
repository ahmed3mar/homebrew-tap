class Brain < Formula
  desc "Collaborative coding workspace"
  homepage "https://github.com/ahmed3mar/brain"
  version "0.1.51"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.51/brain-0.1.51-macos-arm64.tar.gz"
      sha256 "d1e14582f889ed55d04039994f53feaf72b7523def5ad32bc455c85904794807"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.51/brain-0.1.51-macos-x64.tar.gz"
      sha256 "747c632a7b68b5effd0ff22c3d1fac443f13aad8a48437f0c3d47c786b47d7f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.51/brain-0.1.51-linux-arm64.tar.gz"
      sha256 "cd986076a80890cf2836af48fb9d0dadfa077e5ac57a80e8c6e86c3429099677"
    end
    on_intel do
      url "https://github.com/ahmed3mar/brain/releases/download/v0.1.51/brain-0.1.51-linux-x64.tar.gz"
      sha256 "673060717895d82a1acdc18df46742c71d0cf250eb21d0920cec66c18067bc9d"
    end
  end

  def install
    bin.install "brain"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/brain --version")
  end
end
