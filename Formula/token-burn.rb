class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.3.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.3.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "b1954147b12901091df3e590ec1b6027aaddea88f6d380ca6c8e3518917f1891"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.3.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "653cb01e062ce3ef2a44b6e3295882f5b452c99eb22ed3dcdad94477829c40b9"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
