class Bbsql < Formula
  desc "MySQL wire-protocol front end for Bytebase"
  homepage "https://github.com/ahmed3mar/bbsql"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ahmed3mar/bbsql/releases/download/v0.1.0/bbsql-darwin-arm64.tar.gz"
      sha256 "ed54580e1f749f2a56aa8770a9d8011c00e4c97a5f4a127e91d8f0b8b283315c"
    end
    on_intel do
      url "https://github.com/ahmed3mar/bbsql/releases/download/v0.1.0/bbsql-darwin-amd64.tar.gz"
      sha256 "856502b960f3beab446fd34198422a8a59787cccd5483d155fa1c6c965c7ee79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ahmed3mar/bbsql/releases/download/v0.1.0/bbsql-linux-arm64.tar.gz"
      sha256 "9478d64b0929b4ddbcbfada1e22a33aaf36ede22db0d31d5f66aa2fa613288b3"
    end
    on_intel do
      url "https://github.com/ahmed3mar/bbsql/releases/download/v0.1.0/bbsql-linux-amd64.tar.gz"
      sha256 "ad1b3a68736d1f6501b1c0c09d2817af84e7481ad3c7bce45c376fcd37943871"
    end
  end

  def install
    bin.install "bbsql"
  end

  test do
    system "#{bin}/bbsql", "version"
  end
end
