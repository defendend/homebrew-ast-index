class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.31.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.31.0/ast-index-v3.31.0-darwin-arm64.tar.gz"
      sha256 "6a2dc407f47b9940e4da554e239719277de97ffd84924a3506ce21ee4ef9dc31"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.31.0/ast-index-v3.31.0-darwin-x86_64.tar.gz"
      sha256 "6889210e57a725ba9495da3ce834f77951a0aa1f15e4a957007b945925551804"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.31.0/ast-index-v3.31.0-linux-arm64.tar.gz"
      sha256 "b7f60291341d94a327cf4664371e254ed6e69cfac38b6bef713d4247a1bc0f61"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.31.0/ast-index-v3.31.0-linux-x86_64.tar.gz"
      sha256 "e87a1872d3f3a5d3872ed1f520a6f11d94f0e7dc89966e2329fe3d6229f0a05f"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.31.0", shell_output("#{bin}/ast-index version")
  end
end
