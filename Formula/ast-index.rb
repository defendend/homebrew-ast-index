class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.26.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.0/ast-index-v3.26.0-darwin-arm64.tar.gz"
      sha256 "c6aa4bf8ea6505106fda6c38a8d52cd295351e414e727c4c85e1bebcc7904fd7"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.0/ast-index-v3.26.0-darwin-x86_64.tar.gz"
      sha256 "89e8288ca0431ef6a1bae82daf15ce4fa265796aee55dbc99a5cf31440914855"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.0/ast-index-v3.26.0-linux-x86_64.tar.gz"
    sha256 "bf51ddd426ea074ce1d189b015fecb05f025fb6c89e2e54db784e9d3a41a6212"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.26.0", shell_output("#{bin}/ast-index version")
  end
end
