class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.51.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.51.0/ast-index-v3.51.0-darwin-arm64.tar.gz"
      sha256 "2946f40056ce4c61a77f57e89a1bcbab1a0327b10abd4ab8f63592bdb19f6338"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.51.0/ast-index-v3.51.0-darwin-x86_64.tar.gz"
      sha256 "be760d4936ab70cff653ffaf48e306822de592a82a96183aeac78831dc7b077d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.51.0/ast-index-v3.51.0-linux-arm64.tar.gz"
      sha256 "d61451e187ea21d7393e8f74bb6911ed6278ac4ce8c39d18e4b914f8068299e3"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.51.0/ast-index-v3.51.0-linux-x86_64.tar.gz"
      sha256 "0859e09803643dc4396222e4fb7f25c3f23c55def7bdf7a9330442b930c990b8"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.51.0", shell_output("#{bin}/ast-index version")
  end
end
