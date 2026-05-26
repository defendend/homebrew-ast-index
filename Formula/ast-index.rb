class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.44.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.1/ast-index-v3.44.1-darwin-arm64.tar.gz"
      sha256 "3f1a2f9662257f2e2d31dc6f9695a9663fc0b23be199091bdcc6bcd1e6735ada"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.1/ast-index-v3.44.1-darwin-x86_64.tar.gz"
      sha256 "7f6b190ad5044f1225490495f8b301a62b2c8ebe523ff437011dba5f40c4c0f7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.1/ast-index-v3.44.1-linux-arm64.tar.gz"
      sha256 "36c76a8b9b5aca88e307882857d67bafa8e1ce95ed297933221d61bc32db7908"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.1/ast-index-v3.44.1-linux-x86_64.tar.gz"
      sha256 "4358139f3ee1dbf3efd46807a05d44dc1b3b9ebe09d8279c3a6e98ffb7726ab6"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.44.1", shell_output("#{bin}/ast-index version")
  end
end
