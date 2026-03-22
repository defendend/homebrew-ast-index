class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.30.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.30.0/ast-index-v3.30.0-darwin-arm64.tar.gz"
      sha256 "be9beeddc431a4758430d3e6dfeeec812536df182c711af49ab2c57998c1091a"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.30.0/ast-index-v3.30.0-darwin-x86_64.tar.gz"
      sha256 "473872c2297cf393a1725752291230850db2c6e163ebb69af508f8b77dc47f4d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.30.0/ast-index-v3.30.0-linux-arm64.tar.gz"
      sha256 "8bbe92941fad957220851bba747efb197da11c8d207a1244e0063019902826ab"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.30.0/ast-index-v3.30.0-linux-x86_64.tar.gz"
      sha256 "eb1cf4413777f9f1c3fbc6cc6fb6fc2b6c1764207d9111df7d4929fa206ad636"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.30.0", shell_output("#{bin}/ast-index version")
  end
end
