class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.3.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.3.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "8343b0eca7e6afd93f462189bcab8b5bdc6242b6015b0a50ee235cd2e9ec06e6"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.3.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "33b500a4131fcf4907842f4b5edba701a919160f0a08a6ecea97a9cfa53a6ac2"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
