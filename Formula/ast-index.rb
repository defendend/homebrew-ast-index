class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.14.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.14.0/ast-index-v3.14.0-darwin-arm64.tar.gz"
      sha256 "7c17473e8222a463af3dc4753db3162c6094e05804d52139459bba531cde4366"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.14.0/ast-index-v3.14.0-darwin-x86_64.tar.gz"
      sha256 "136d12e0d975200550817e482169843e1f53f5ced8db894bbbda7d74a37be92a"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.14.0/ast-index-v3.14.0-linux-x86_64.tar.gz"
    sha256 "7cda1154e9fed0f882d025acfba8dea6871339de0efbc09bae0093ba0ab500c4"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.14.0", shell_output("#{bin}/ast-index version")
  end
end
