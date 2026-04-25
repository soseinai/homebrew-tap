class Ought < Formula
  desc "Behavioral test framework powered by LLMs"
  homepage "https://sosein.ai/products/ought"
  version "0.2.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.1/ought-aarch64-apple-darwin.tar.gz"
      sha256 "e89269a75aae853dc92351ca19760cc6cbb22af8cb782dc18dde7906ad4d8c2b"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.1/ought-x86_64-apple-darwin.tar.gz"
      sha256 "04d6b0127f17a63b95ee070da42916101913b1ca285211aa68fa77a01b265af8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.1/ought-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "996bea5cc953c706661373d3362c1adf61af09b83e981cd0b227e65668c90d19"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.1/ought-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4ad41d5f5f1740a52be7be86d137a9bce210f942fdc7ebcc4502ebbd6163e8f"
    end
  end

  def install
    bin.install "ought"
  end

  test do
    assert_match "ought", shell_output("#{bin}/ought --version")
  end
end
