class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.48.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.1/ast-index-v3.48.1-darwin-arm64.tar.gz"
      sha256 "1d672cfa8061458595059f9d45be831b984876aeac37ed57f655c4f5a4ac16a6"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.1/ast-index-v3.48.1-darwin-x86_64.tar.gz"
      sha256 "f580c3c26166d892c7f5d20ebfe34fc94886d6f0199befadd51ea7165bf81664"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.1/ast-index-v3.48.1-linux-arm64.tar.gz"
      sha256 "c898fa1e25c2136daaf7f8563042b9fba20f220d1eb554b93e05ee4c095ff8bc"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.1/ast-index-v3.48.1-linux-x86_64.tar.gz"
      sha256 "454364a779f2fc447d193ea395ed64e4e4ec89ae1fac21798e887b175d85a710"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.48.1", shell_output("#{bin}/ast-index version")
  end
end
