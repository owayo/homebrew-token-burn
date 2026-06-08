class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.6.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.6.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "6a99704921e77d073ac7200f87d3469bb4401adfcbf5e52c14b1254fad9335c0"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.6.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "0c06ba4ecf2796014ca20a16b9338e22aff98afbe7941561d86a88cda1245da9"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
