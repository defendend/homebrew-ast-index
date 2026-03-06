class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.27.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.27.0/ast-index-v3.27.0-darwin-arm64.tar.gz"
      sha256 "fc6277721f7348045adba268202fd3cafc4b0104c1622c820604a23ff20826aa"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.27.0/ast-index-v3.27.0-darwin-x86_64.tar.gz"
      sha256 "94ce2eed71dc1ec1676771400291d794d61f83e287bf0670d6676571f37eeaa9"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.27.0/ast-index-v3.27.0-linux-x86_64.tar.gz"
    sha256 "eee47ecd1d4c5dcd3382bb473c8acc5c246c8816dca0b643e7cc393817657253"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.27.0", shell_output("#{bin}/ast-index version")
  end
end
