class Ought < Formula
  desc "Behavioral test framework powered by LLMs"
  homepage "https://sosein.ai/products/ought"
  version "0.2.0-rc3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0-rc3/ought-aarch64-apple-darwin.tar.gz"
      sha256 "da24268f852a4669ada7991d6c7692ce5c8d81661d3af566590d0a2a5dba4605"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0-rc3/ought-x86_64-apple-darwin.tar.gz"
      sha256 "548a3b8b3cedd5ae8a84cd3d420c7fbf6367b75d2c8b8c5dc6f09f7184888b99"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0-rc3/ought-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e609a4b00f2cfe79bac44cc486c83c3495bdb08bbd27421ed93af353343a0536"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0-rc3/ought-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cb65d1b634d81b0593f63680529a18985be29498ee2233e575b45808612cfe6"
    end
  end

  def install
    bin.install "ought"
  end

  test do
    assert_match "ought", shell_output("#{bin}/ought --version")
  end
end
