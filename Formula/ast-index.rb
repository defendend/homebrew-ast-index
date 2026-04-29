class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.40.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.3/ast-index-v3.40.3-darwin-arm64.tar.gz"
      sha256 "cb2f8e093251883dc3a69067bb7cb82c64ec7baf39ce47cfdd5a5b90d3410dc1"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.3/ast-index-v3.40.3-darwin-x86_64.tar.gz"
      sha256 "00dda7dfc6d1e6f2a6de5fed239fb67a863c9d822c12999798fff2a387e1bfa7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.3/ast-index-v3.40.3-linux-arm64.tar.gz"
      sha256 "c829f6f0e2367c4e75c9f14ba828c0be6fe8e3e2d8b424d83696111945705466"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.3/ast-index-v3.40.3-linux-x86_64.tar.gz"
      sha256 "45ebcb94c974a541bc467a14e728089b7a3991332180170e40500c3c6df0fdf3"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.40.3", shell_output("#{bin}/ast-index version")
  end
end
