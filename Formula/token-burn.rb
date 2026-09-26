class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.9.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "cba009fd75ae3b8e2800a79427e22deaa5e7b0ae8f7191f74bb0dd4686ff13cd"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.9.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "943bb7b82d81f3933a3bc8786d338bab14cd6007f9cfaa5bd2a3d4cf9e918da9"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/token-burn --version")
  end
end
