class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.6.102"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.6.102/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "53f244f8b13978e322fb5883d4b84cb6246b24422cc186489af7b9d0b0e9f2fe"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.6.102/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "380ed8cfe02792f34350dc973cdfc0f26834fa7b07de99c5a405336d83fb59bf"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
