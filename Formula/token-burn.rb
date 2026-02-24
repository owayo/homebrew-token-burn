class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.2.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.2.104/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "b038c0a9dec319a21a0179cbc47af14a61c7c8bb632ae34cc620ba1c44f52a9c"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.2.104/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "98e455e7689482d5b2cbff59744f1c82ac1a5691e1a0d59e3a93f17b02681dab"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
