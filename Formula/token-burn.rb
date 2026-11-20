class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.11.102/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "2dc66d39e08f1cc0300b5f46a3ca8bd2eb828de7ec7f5ebc65abc4ac04821b16"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.11.102/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "6b0fb7ae7ff63c1c726e4d27583107e810bba95247d4789d4454b364e61a112e"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/token-burn --version")
  end
end
