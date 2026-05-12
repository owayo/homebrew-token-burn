class TokenBurn < Formula
  desc "Consume AI coding assistant tokens before weekly reset"
  homepage "https://github.com/owayo/token-burn"
  version "26.5.101"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/token-burn/releases/download/v26.5.101/token-burn-aarch64-apple-darwin.tar.gz"
      sha256 "9a95d40b3471914fa15f069468b28feeceb0032f36aeb3706b394a8b1e9fd0b9"
    else
      url "https://github.com/owayo/token-burn/releases/download/v26.5.101/token-burn-x86_64-apple-darwin.tar.gz"
      sha256 "84f35d5b0dcd99fbf30238aac0349c99acd6a2a6dc85ffd9361aa9771a992b08"
    end
  end

  def install
    bin.install "token-burn"
  end

  test do
    system "#{bin}/token-burn", "--version"
  end
end
