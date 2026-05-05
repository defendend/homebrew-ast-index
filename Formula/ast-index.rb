class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.40.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.4/ast-index-v3.40.4-darwin-arm64.tar.gz"
      sha256 "304b7800ba2c44800a917372935c1deb82bd44a4e96d13afa77689b7f7711094"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.4/ast-index-v3.40.4-darwin-x86_64.tar.gz"
      sha256 "6c1a0f44402025c30527952f08e87afb8e4224c88dc6c43ed82c67102aabefb1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.4/ast-index-v3.40.4-linux-arm64.tar.gz"
      sha256 "768091107b0f7115d63cae2db51b82da839d5e037b4f08eaf8922ac5c9815a2c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.4/ast-index-v3.40.4-linux-x86_64.tar.gz"
      sha256 "e9f4c03f62f8bbf4b748bac62180ec808532f827d3e7b981ab865bceba588259"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.40.4", shell_output("#{bin}/ast-index version")
  end
end
