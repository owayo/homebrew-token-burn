class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.2.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.2.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "335584880e093688b574e3bf9742b61a8d50ca055bf387e202307ca1d387dcee"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.2.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "f15bb3a31e261d26eb77fb6ed638cfc6ed7b13612f63bae225da35b8568afd50"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
