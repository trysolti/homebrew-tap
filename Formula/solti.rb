class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.1"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-arm64.tar.gz"
    sha256 "9af73b958d41703ca5ff722098ef0398fe9118e071f89d27a1d386863d296190"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.1/solti-0.1.1-darwin-x64.tar.gz"
    sha256 "98e83335ac0c3762952e80c2e57b61f2211270f5375f47f7ecb6be606578fa5c"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end
