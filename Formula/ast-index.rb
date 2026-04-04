class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.34.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.34.0/ast-index-v3.34.0-darwin-arm64.tar.gz"
      sha256 "49ba4c9474ce2be68eb88bb8171eb5f7e840fda2813da69dedbb32ae735b1177"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.34.0/ast-index-v3.34.0-darwin-x86_64.tar.gz"
      sha256 "3b9b995ba7dacdab13937cc02737f6c89fce851d898b690d4aab912b5dc215a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.34.0/ast-index-v3.34.0-linux-arm64.tar.gz"
      sha256 "1ca0fb713cd80cb65cfabf4145f301ed0280ba02cdf104f047dda1b36a6b1948"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.34.0/ast-index-v3.34.0-linux-x86_64.tar.gz"
      sha256 "9461fae916030bcd1d8ec70e4e5683b6a78a43731f4e0acda7cd219b2e725d22"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.34.0", shell_output("#{bin}/ast-index version")
  end
end
