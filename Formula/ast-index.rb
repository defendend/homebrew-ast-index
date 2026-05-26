class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.44.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.0/ast-index-v3.44.0-darwin-arm64.tar.gz"
      sha256 "1eb944d3bf5049f0e85511f7582084be1defa6efcf674e9c305dc8c4977ad8cb"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.0/ast-index-v3.44.0-darwin-x86_64.tar.gz"
      sha256 "e32b97e58056a6f65d94d5149676dace192cc5905d6ec7ba34386df07b44ce06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.0/ast-index-v3.44.0-linux-arm64.tar.gz"
      sha256 "6d560ae7f704d191742b18438cd7bc4ac49ce81deaf0beffc355858cdd583601"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.0/ast-index-v3.44.0-linux-x86_64.tar.gz"
      sha256 "b2b5a9c691c9caf784dfb55e7e40fb454c1f5e89dee092e46abfa8bebb238161"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.44.0", shell_output("#{bin}/ast-index version")
  end
end
