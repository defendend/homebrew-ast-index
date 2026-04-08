class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.36.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.1/ast-index-v3.36.1-darwin-arm64.tar.gz"
      sha256 "92dbcd596c22d43f060c5049fd66268182301a57a4c09c0d38ecd0ac229c49d8"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.1/ast-index-v3.36.1-darwin-x86_64.tar.gz"
      sha256 "ab172228fdd20459108976a3edc0c3dc744d48301f3319cc8d95f0fbf15229d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.1/ast-index-v3.36.1-linux-arm64.tar.gz"
      sha256 "1bb3c8b077c24447c4e214485a5d8b9ec9e399ef90a65c6d37576680c320d6a8"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.1/ast-index-v3.36.1-linux-x86_64.tar.gz"
      sha256 "f9c5a2bc9821e68acf8c7075b08b16c2691a2d1ced10cdf13eff0013005d903f"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.36.1", shell_output("#{bin}/ast-index version")
  end
end
