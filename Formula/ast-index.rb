class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.46.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.1/ast-index-v3.46.1-darwin-arm64.tar.gz"
      sha256 "d427155e073736c896cde8e74d011942b22c4b0b66632d7f3269b0860c5ddb1f"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.1/ast-index-v3.46.1-darwin-x86_64.tar.gz"
      sha256 "aa7a5d8cb4909f5ab786b6be71edb3e75eca77c05705eb3c5111ea579d6c54ee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.1/ast-index-v3.46.1-linux-arm64.tar.gz"
      sha256 "538d07a4404f38e24e82ee431d85dff33dbe4d8b283db301492a383c5a22d04e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.1/ast-index-v3.46.1-linux-x86_64.tar.gz"
      sha256 "5da847d73cb0e36e1fbbb9907699d89d31df210b18e95035a3e9a6890621f54b"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.46.1", shell_output("#{bin}/ast-index version")
  end
end
