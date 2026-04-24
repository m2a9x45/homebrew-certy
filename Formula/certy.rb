class Certy < Formula
  desc "CLI tool to work with eIDAS QWACs & QSEALs"
  homepage "https://github.com/m2a9x45/certy"
  version "0.0.2"

  if Hardware::CPU.arm?
    url "https://binaries.certy.lewisdukelow.com/v0.0.2/certy_0.0.2_darwin_arm64.tar.gz"
    sha256 "def1a80019506526ffbd044f7b1390943adfd19eedfdba8e44c693176a7b38dc"
  else
    url "https://binaries.certy.lewisdukelow.com/v0.0.2/certy_0.0.2_darwin_amd64.tar.gz"
    sha256 "cdaf68cfa80d64bdd54c71b8a0b940b83ca37079b13a34afcce284450c9399fa"
  end

  def install
    bin.install "certy"
  end
end
