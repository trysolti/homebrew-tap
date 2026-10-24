class Solti < Formula
  desc "Solti Platform CLI — batch processing without infrastructure"
  homepage "https://solti.run"
  version "0.1.3"

  on_arm do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.3/solti-0.1.3-darwin-arm64.tar.gz"
    sha256 "aa96b5bc3d5adf90fb6d50020f9dc98ba66503494f6ad9bab41a71bef7a5d50c"
  end

  on_intel do
    url "https://github.com/trysolti/homebrew-tap/releases/download/v0.1.3/solti-0.1.3-darwin-x64.tar.gz"
    sha256 "6403d3cad690427d5379d6eb66c56f2bd1f898a614bee868cfca06d0f60caf19"
  end

  def install
    bin.install "solti"
  end

  test do
    system "#{bin}/solti", "--version"
  end
end