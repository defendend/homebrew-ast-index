class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.5/ast-index-v3.17.5-darwin-arm64.tar.gz"
      sha256 "428fa65940de615ad50949cc4adf7097bcf780bc86bb7b6efa4e92ad075d08bf"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.5/ast-index-v3.17.5-darwin-x86_64.tar.gz"
      sha256 "79038ef27ab3815d4ed34cc20d9edba281e78986db606ac19644bd3bd57e7708"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.5/ast-index-v3.17.5-linux-x86_64.tar.gz"
    sha256 "fe5620bf4f9ccda36ac4f60044d3c5c1f251ad2449d23adc1b0eda4b0696c2f0"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.5", shell_output("#{bin}/ast-index version")
  end
end
