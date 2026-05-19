class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.42.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.42.0/ast-index-v3.42.0-darwin-arm64.tar.gz"
      sha256 "1bf85c8b92673b422339344e99f0e18cee098d84af0d3e34557ad1a3a62af075"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.42.0/ast-index-v3.42.0-darwin-x86_64.tar.gz"
      sha256 "fb2e71247ce5eea72fbe966d4d17b19bfe09e3aba507074800bf3a4735387b96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.42.0/ast-index-v3.42.0-linux-arm64.tar.gz"
      sha256 "e1e970fa03eeeada58c8d7ca675765d43de54db6f790598ca7af309afc8dc83a"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.42.0/ast-index-v3.42.0-linux-x86_64.tar.gz"
      sha256 "475f49222edc2bfb9b986aa81ad7413d14c21c78574a15bac3988080eace9178"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.42.0", shell_output("#{bin}/ast-index version")
  end
end
