class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.11.100/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "0d3ca8cc67c9a35ded85e531d15b8bc843a12b426b94e592551eed8f9e8b5a08"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.11.100/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "0faf220f8f18881784817b04c42238d799eeef3a0d0810a20cc35e02bca55d02"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/token-burn --version")
  end
end
