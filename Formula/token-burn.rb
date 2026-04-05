class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.4.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.4.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "413e1512410ccb4a54be1aa11553ad0d57eef9d322184332ff8b5b9b878d1b4b"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.4.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "618cfe2f631e9cc929986ec143fff5d6cf5e234d94bce31c4ff66f280867e9c9"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
