class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.1"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-arm64.tar.gz"
    sha256 "b203d3da006c00d7f6ff45e026b6282bb9fe1fde0127294bec779ef558da4f3c"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-x64.tar.gz"
    sha256 "e51191982180468c682161ad880ff38d7396d981808b219d73077df596d2246e"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end