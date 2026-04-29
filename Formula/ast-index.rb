class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.40.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.2/ast-index-v3.40.2-darwin-arm64.tar.gz"
      sha256 "e840fe29e82f3a69945a818c8b303bce17c2aa472992ad75365dc04ff3fca339"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.2/ast-index-v3.40.2-darwin-x86_64.tar.gz"
      sha256 "4869c8cda0ec6448e3c7fc57474ca381bc252cfbf7b97453566c5163d0c21d41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.2/ast-index-v3.40.2-linux-arm64.tar.gz"
      sha256 "019f1708c186b56492ca17b695bbac48055a42f4bb90d4609211d11154a6c081"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.40.2/ast-index-v3.40.2-linux-x86_64.tar.gz"
      sha256 "4f52975240c92052122411e74f3eb4ab041b96afa7c5fd53549cb686472c1be8"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.40.2", shell_output("#{bin}/ast-index version")
  end
end
