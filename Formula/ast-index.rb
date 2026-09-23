class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.54.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.54.0/ast-index-v3.54.0-darwin-arm64.tar.gz"
      sha256 "bf51ac92d7416edad100d79b01268fe5d3ab882b59edaab94bd3e42401ff9fba"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.54.0/ast-index-v3.54.0-darwin-x86_64.tar.gz"
      sha256 "46b49601d1e4434adb3ac4f8f4a52a7a40fb5d7cff28cde0c0dfabadfb615eb2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.54.0/ast-index-v3.54.0-linux-arm64.tar.gz"
      sha256 "482faa4a3cf81fd77f8db771c2a36bbf764b73eb88b07f0ec5ce500b871d6841"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.54.0/ast-index-v3.54.0-linux-x86_64.tar.gz"
      sha256 "d202ef3bd3bdb40212013adc33cf1562e97ba44c0dbf66d834823f3b865fa508"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.54.0", shell_output("#{bin}/ast-index version")
  end
end
