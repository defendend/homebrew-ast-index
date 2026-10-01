class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.56.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.56.0/ast-index-v3.56.0-darwin-arm64.tar.gz"
      sha256 "51f010c7a86f2049bd6347a0844ca6466c9b617e6962e2374f1f899e5cde23ba"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.56.0/ast-index-v3.56.0-darwin-x86_64.tar.gz"
      sha256 "4355138d45edf200058a122a8746baaed5c08d76223fe42f4dff5b15294c6195"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.56.0/ast-index-v3.56.0-linux-arm64.tar.gz"
      sha256 "088e7f30ccd39629e9987e4d5e09d576e0c92190207fc4ab49f991a6b904edb0"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.56.0/ast-index-v3.56.0-linux-x86_64.tar.gz"
      sha256 "88c84ed45c16528c1884da0c960110aed42bc6697a5bba1604d954863bf6a1b8"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.56.0", shell_output("#{bin}/ast-index version")
  end
end
