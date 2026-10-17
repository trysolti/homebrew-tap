class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.0"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.0/solti-0.1.0-darwin-arm64.tar.gz"
    sha256 "86c6c6d0f19a389a26051c4b7d35037b0d5f139ad493b3febf4180fb82fc1d67"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.0/solti-0.1.0-darwin-x64.tar.gz"
    sha256 "b4cc69f13e0a6db3ef068da9bff9522a279d659d1288481dedb855c1146f38f1"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end
