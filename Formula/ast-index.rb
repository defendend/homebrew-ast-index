class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.43.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.2/ast-index-v3.43.2-darwin-arm64.tar.gz"
      sha256 "73ea35111e8368daa7e1d75241b1261d2b336e18a1f57af0f0ed49e27633c046"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.2/ast-index-v3.43.2-darwin-x86_64.tar.gz"
      sha256 "259c9e65cea7fdeca3df9caedb4fcdb36baac244da1ea013a23fbe3757850422"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.2/ast-index-v3.43.2-linux-arm64.tar.gz"
      sha256 "0ee55347e77cc28520db787e8ea0351272860f0e22df7f8498339e27d3ce2aae"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.2/ast-index-v3.43.2-linux-x86_64.tar.gz"
      sha256 "d9fa1ea11c150ec5e505631e38181680cab90fdab46eb1e243bd977c06d44c9a"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.43.2", shell_output("#{bin}/ast-index version")
  end
end
