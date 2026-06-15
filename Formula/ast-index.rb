class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.47.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.2/ast-index-v3.47.2-darwin-arm64.tar.gz"
      sha256 "e91ac5b5e67f9116571a7c6d371d535894c3784dcb07f5fc2b1d3c2d4aeb3150"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.2/ast-index-v3.47.2-darwin-x86_64.tar.gz"
      sha256 "887ab8eb00f9967d0543ac72a7b065011613eefbac9029d3de1df1de2a36a4f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.2/ast-index-v3.47.2-linux-arm64.tar.gz"
      sha256 "a2b6c580874178631d1d10d15c70b7eab838b555f311e412f6a4b5a2d32d87b5"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.2/ast-index-v3.47.2-linux-x86_64.tar.gz"
      sha256 "e980901c282b400425c32460533f0b1f1caa26e25861316e072b8032c9327d0f"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.47.2", shell_output("#{bin}/ast-index version")
  end
end
