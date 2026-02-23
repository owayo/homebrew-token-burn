class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.2.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.2.102/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "2fa895a33db12c8077ecbd92ee8f58586c50a710a1581c1711c4fd2543c5c985"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.2.102/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "7d6102d757451e056a70380e5ffb8810716c5d2d292d1810606190bc78a0ceb2"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
