class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.4.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.4.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "ea7bc5e6abbd8df87d32e0a16c39d06711addd3b706f7da0abd5aa0680526ccf"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.4.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "b66126482952fe401a5f69b2578da2e172bfc90a0e1a96b93e3c8cc17320107f"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
