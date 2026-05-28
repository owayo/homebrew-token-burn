class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.5.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.5.103/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "f1f7dd964571e973f1302180f0721bcdc7d80efa4e4f05ce68271424d5e9c0bf"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.5.103/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "c8b070dd01e7a5c56ab3f909033066ed4640c675e8827276b73d6893e57815e0"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
