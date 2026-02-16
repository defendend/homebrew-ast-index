class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-darwin-arm64.tar.gz"
      sha256 "c82bc93c66ba862c0100e7b9dc65eb5712a42c9084b181df48a6652a55ec50da"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-darwin-x86_64.tar.gz"
      sha256 "76bb5f6f00dceb85f59ef4f2b78529a1412732d90587f922da67e371343911c4"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.2/ast-index-v3.16.2-linux-x86_64.tar.gz"
    sha256 "f616303b00f9eaaca0fb670cf02dddf343f76ce74ae67998e2f5de816f309b23"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.2", shell_output("#{bin}/ast-index version")
  end
end
