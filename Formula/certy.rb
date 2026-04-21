class Certy < Formula
  desc "CLI tool to work with eIDAS QWACs & QSEALs"
  homepage "https://github.com/m2a9x45/certy"
  version "0.0.1"

  if Hardware::CPU.arm?
    url "https://binaries.certy.lewisdukelow.com/v0.0.1/certy_0.0.1_darwin_arm64.tar.gz"
    sha256 "6e2f4f5663829e94ee166f866aba71dbdadb319023e93f7249be813c934dae32"
  else
    url "https://binaries.certy.lewisdukelow.com/v0.0.1/certy_0.0.1_darwin_amd64.tar.gz"
    sha256 "90916a59dac922b8943ed3fd18cecafe4f639553b0da998348d5240d46a68048"
  end

  def install
    bin.install "certy"
  end
end
