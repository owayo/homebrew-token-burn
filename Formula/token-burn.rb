class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.2.105"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.2.105/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "7f54ae17002bcc23f27882c3a2a70b1b189979119a2585eee54b9c0c7ce9a329"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.2.105/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "83382f5e41399905995acf7e2e002066c97abeb9b89be5d2683421c70e5dbd15"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
