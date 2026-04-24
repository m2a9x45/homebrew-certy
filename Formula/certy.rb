class Certy < Formula
  desc "CLI tool to work with eIDAS QWACs & QSEALs"
  homepage "https://github.com/m2a9x45/certy"
  version "0.0.3"

  if Hardware::CPU.arm?
    url "https://binaries.certy.lewisdukelow.com/v0.0.3/certy_0.0.3_darwin_arm64.tar.gz"
    sha256 "6977655b11eb042988c66c5ed79bdc144b61288580b23687ddbdf8d3cf4dd73b"
  else
    url "https://binaries.certy.lewisdukelow.com/v0.0.3/certy_0.0.3_darwin_amd64.tar.gz"
    sha256 "7de40b3816d2f9a60d2bf212f8846e07c2cd8fd748e99635b6ab10a85f882dcf"
  end

  def install
    bin.install "certy"
  end
end
