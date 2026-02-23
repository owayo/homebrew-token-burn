class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.2.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.2.103/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "6a2bba36b321073eeb749af45c35f593939f396d97ec67e30336783bb223fe16"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.2.103/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "019acefc8f7bc96f2cf8426bdf731546328725923906b9d31093cefedc83d9c8"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
