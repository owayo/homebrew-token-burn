class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.11.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "0c0188efa8d7143ea84aa027c93a24ff81ede12588580d9241d6f3a0f1cbf38a"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.11.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "87ca1bd16e61b5eab90d2f74266dbde16c696e5826a2d1810bbadb4580484c46"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/token-burn --version")
  end
end
