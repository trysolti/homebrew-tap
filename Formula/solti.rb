class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.2.1"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.2.1/solti-0.2.1-darwin-arm64.tar.gz"
    sha256 "76b16eb375d58f6795b4e361821860ae9988594cf186f1a8179ff205f71f8a7b"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.2.1/solti-0.2.1-darwin-x64.tar.gz"
    sha256 "a7baa2a3bda9ae1c7c0fba3cf277a2473f5a7606620faa780d7cf9cd037ffc4d"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end