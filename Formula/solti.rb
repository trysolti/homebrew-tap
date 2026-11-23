class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.2.1"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.2.1/solti-0.2.1-darwin-arm64.tar.gz"
    sha256 "14ea6cb18e074e8b032e44b5881839306be8cf2a705ca9f335772fbcf6861d9e"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.2.1/solti-0.2.1-darwin-x64.tar.gz"
    sha256 "fec5918c7eb3f159ca00058c49164b1e7870dfd4b2348e8c69078441cbd7ede2"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end