class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.47.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.0/ast-index-v3.47.0-darwin-arm64.tar.gz"
      sha256 "56d9e604c6c5bb3587abbd633017272c81c177451f4eddcc2c79b3bf1bcdc523"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.0/ast-index-v3.47.0-darwin-x86_64.tar.gz"
      sha256 "1cab8468e3698ac268e18c9fe45abefcca3598d2daff811ccc2140a759286fb9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.0/ast-index-v3.47.0-linux-arm64.tar.gz"
      sha256 "a790856c8a6e0d133c015754d2aaf5bb1f7b7921b0881ea1b9e3e01b84bef3e7"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.0/ast-index-v3.47.0-linux-x86_64.tar.gz"
      sha256 "d8e876cfe514e59c98eb9edd273482835d512dc05a40d2d9d573185d026fc923"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.47.0", shell_output("#{bin}/ast-index version")
  end
end
