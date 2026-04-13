class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.37.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.1/ast-index-v3.37.1-darwin-arm64.tar.gz"
      sha256 "88a64c7135f912ef6b0e45b470613617a49a65213a0d2dc65c5f854d227b4ea5"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.1/ast-index-v3.37.1-darwin-x86_64.tar.gz"
      sha256 "0f5458c6b98ccdbf3a0a3900638027bd3908a13583a5fd30f6e0afac0634a603"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.1/ast-index-v3.37.1-linux-arm64.tar.gz"
      sha256 "183ac073173ead5132e460e35fda10d05ebb4cdec0a5cdf3e7f92f2ff7d5111b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.1/ast-index-v3.37.1-linux-x86_64.tar.gz"
      sha256 "46ae23e4f71058b68ad3d927953b796372f5b6a55c6a7eddde7bafc93acead03"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.37.1", shell_output("#{bin}/ast-index version")
  end
end
