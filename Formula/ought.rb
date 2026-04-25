class Ought < Formula
  desc "Behavioral test framework powered by LLMs"
  homepage "https://sosein.ai/products/ought"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0/ought-aarch64-apple-darwin.tar.gz"
      sha256 "70882128a8b4c3ec0f89c2794ecdf9e592b542d12e64fc36176f1282faa153dc"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0/ought-x86_64-apple-darwin.tar.gz"
      sha256 "6731256200371fff865c36e3cbd94fc208ed7f3ec89fb118455eec0fb37b098f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0/ought-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3ff151e2674ad57d3872b64f434ba64f0a18131f1badbecce969c2c31dab5527"
    end
    on_intel do
      url "https://github.com/soseinai/ought/releases/download/v0.2.0/ought-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c8310b36473bad93aad32c402f77fa113998d998a50424a78eed4aa013854044"
    end
  end

  def install
    bin.install "ought"
  end

  test do
    assert_match "ought", shell_output("#{bin}/ought --version")
  end
end
