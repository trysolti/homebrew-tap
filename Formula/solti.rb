class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.1"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-arm64.tar.gz"
    sha256 "a36244ec86a63fe51805683aefc77b21efc5fa8661bcccc3bfedc06cb634f53e"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-x64.tar.gz"
    sha256 "804da63c0adbeafa811855157ccf45da9783b673a303d3e6b7d59a6cf1eba286"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end