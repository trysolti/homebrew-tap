class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.4"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.4/solti-0.1.4-darwin-arm64.tar.gz"
    sha256 "d37a2137642b34beda3373ce6cc12b0a2c1f533ab4cfbaab5ea3225bf536249c"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.4/solti-0.1.4-darwin-x64.tar.gz"
    sha256 "cf968804dcfd4bb4cfa2638b230bcfe25959bf335b6da3b37edc29103338b6c1"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end