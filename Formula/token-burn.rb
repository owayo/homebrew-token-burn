class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.6.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.6.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "6763b1d6b8a9bbaff6b2699f61195de1adecf7552d61a6bd3e04cdfb729eda03"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.6.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "06683dbae8a28a8ebd7cbb9b8f9101a99908183ed14852aafede8b1b319364cd"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
