class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.33.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.1/ast-index-v3.33.1-darwin-arm64.tar.gz"
      sha256 "b77780f58f5b488cdabfb97e6ea8ee4d647a0165798105dfc8383b035f28790e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.1/ast-index-v3.33.1-darwin-x86_64.tar.gz"
      sha256 "a686c95db16414bbe74e5c540f181221f3e2cfcd23fe66ba9e22bf3c8e12526b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.1/ast-index-v3.33.1-linux-arm64.tar.gz"
      sha256 "fc56fa15fd64230b524e2c4b5a580ab268721b0ed8097ddc8d7312e4632df866"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.1/ast-index-v3.33.1-linux-x86_64.tar.gz"
      sha256 "1cab9b6d27b4c503d3b632eb92390e102baa694ec656c3721b317216008b0020"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.33.1", shell_output("#{bin}/ast-index version")
  end
end
