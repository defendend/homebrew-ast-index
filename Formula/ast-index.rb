class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.37.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.0/ast-index-v3.37.0-darwin-arm64.tar.gz"
      sha256 "ecac65973259b70728e9f777a9c890dab3067cfb6d560f70b3fbfc3592611275"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.0/ast-index-v3.37.0-darwin-x86_64.tar.gz"
      sha256 "87f4d6dc05cc48ac85286c2d7780058a5a9e6ed59c65a88049ae8e313116c167"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.0/ast-index-v3.37.0-linux-arm64.tar.gz"
      sha256 "a05006cdc56962a544173928310ef27f2f06fb8327dc5cff03e466530c671ece"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.37.0/ast-index-v3.37.0-linux-x86_64.tar.gz"
      sha256 "6d96b33b3bb6502b3744beea074dbf58308b99901e87016413a9766f8850c50a"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.37.0", shell_output("#{bin}/ast-index version")
  end
end
