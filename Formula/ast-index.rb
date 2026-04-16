class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.38.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.38.0/ast-index-v3.38.0-darwin-arm64.tar.gz"
      sha256 "1e1128268d249205aaaaa81711eedba0c5ad0501e2e9ffa884b41d93311ccfc8"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.38.0/ast-index-v3.38.0-darwin-x86_64.tar.gz"
      sha256 "897727ccf3c98ee8c1e26ffdac97f5069aeb2095b2da789acf876957ef937b02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.38.0/ast-index-v3.38.0-linux-arm64.tar.gz"
      sha256 "72cbc6d37bd602f5baaa871a64836c279974da3e33b4985649225def2791732a"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.38.0/ast-index-v3.38.0-linux-x86_64.tar.gz"
      sha256 "b8fc1eedb177ac243e7db4300c8ad76da79666046cafcb3814688631e69aaa28"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.38.0", shell_output("#{bin}/ast-index version")
  end
end
