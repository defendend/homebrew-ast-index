class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.1/ast-index-v3.25.1-darwin-arm64.tar.gz"
      sha256 "189108952f296ebee49dd66e06024b746c9a8fc64b4972eb8beed3a755657f66"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.1/ast-index-v3.25.1-darwin-x86_64.tar.gz"
      sha256 "6af3246db9ac332b98da5781a5c58369ca9157a89450d512832dd3ac578319ba"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.25.1/ast-index-v3.25.1-linux-x86_64.tar.gz"
    sha256 "432967fabf05286e4eb736e56f6a943826a47e337e71f65406bae118eae5a194"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.25.1", shell_output("#{bin}/ast-index version")
  end
end
