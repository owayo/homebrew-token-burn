class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.5.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.5.102/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "454d4fb466a214a8da868ac329c2a856cd1cbf740cd57fe375ea04e952cd0a91"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.5.102/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "4f6c2152b7cb948cfecf791fe9657cf448f0f6e12affe5c47a4081a0763da5ca"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
