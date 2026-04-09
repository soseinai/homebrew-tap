class Ought < Formula
  desc "Behavioral test framework powered by LLMs"
  homepage "https://sosein.ai/products/ought"
  url "https://github.com/soseinai/ought/archive/refs/tags/v0.2.0-rc2.tar.gz"
  # sha256 will be filled in when the release is created
  sha256 "18644fb5319191e2e4346bcae0ad014e2de5e6e5c032e1a091a07899e3583eb8"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/ought-cli")
  end

  test do
    assert_match "ought", shell_output("#{bin}/ought --help")
  end
end
