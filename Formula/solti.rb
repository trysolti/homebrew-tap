class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.2"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.2/solti-0.1.2-darwin-arm64.tar.gz"
    sha256 "6c6d5f4b0e18a8e2cc3a99347194d4641e9db8b3327d981e2f6c22be0361b9e4"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.2/solti-0.1.2-darwin-x64.tar.gz"
    sha256 "8811e1f3da12308ec3d6e2adadf92465e23053595811b05509fdeba98ca631aa"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end