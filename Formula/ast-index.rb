class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.45.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.45.0/ast-index-v3.45.0-darwin-arm64.tar.gz"
      sha256 "c71a28902c4417bfb4513b2f7b1206f0c569471fa832af7d057757d3c296b4dd"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.45.0/ast-index-v3.45.0-darwin-x86_64.tar.gz"
      sha256 "9cd0f86ca569b64b6f18db4d78415bbb0b0e64d14e24a2814d2872fcf1476085"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.45.0/ast-index-v3.45.0-linux-arm64.tar.gz"
      sha256 "e010563bd1c06a02ff2638a98d364e3c4f8a00694b5a79a6e2ca3458c98c94a5"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.45.0/ast-index-v3.45.0-linux-x86_64.tar.gz"
      sha256 "4618a80a5fa9dfc3364804a265d88a7ecd1b42f1dd7d5d0e00689f63a4023e6d"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.45.0", shell_output("#{bin}/ast-index version")
  end
end
