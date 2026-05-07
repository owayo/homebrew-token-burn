class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.5.100"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.5.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "71644dd7d75bcd27dd25040844bf14637f53df650cbc179f48619af0f78c5868"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.5.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "611c888480d93fcd75d8cc7b328940400acdbeb2f58b75c853af7086be982323"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
