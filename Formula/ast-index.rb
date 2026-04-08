class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.36.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.0/ast-index-v3.36.0-darwin-arm64.tar.gz"
      sha256 "90bb78218c52b5a0c5655bc346e56c92ece8fd80313019b8739881c233358bde"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.0/ast-index-v3.36.0-darwin-x86_64.tar.gz"
      sha256 "7d738d9c05f60dd5754e5d86ebb8c5284b9f442f892201522e860d51efe1bdd6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.0/ast-index-v3.36.0-linux-arm64.tar.gz"
      sha256 "179a6aeee590224886a324311a90cb868bdd73113827cc8f9a237a786e682e52"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.0/ast-index-v3.36.0-linux-x86_64.tar.gz"
      sha256 "54eb7a053d047fa29b8da85270f9e2d0cbdb567641e9f42ae6bb4800f1b30d0f"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.36.0", shell_output("#{bin}/ast-index version")
  end
end
