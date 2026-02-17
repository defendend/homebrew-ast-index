class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.3/ast-index-v3.17.3-darwin-arm64.tar.gz"
      sha256 "458548b9860e997b34b2f90c2b70cfd9a2b91f956d620ed8a9d6d68d88a2c7f8"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.3/ast-index-v3.17.3-darwin-x86_64.tar.gz"
      sha256 "1ca85b57b272c3560e1950b5736d798dfd5ea5de8f8b4c0db000946cdf65bbc1"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.3/ast-index-v3.17.3-linux-x86_64.tar.gz"
    sha256 "96b161db2ea7a1d938bb5e6c6aa497cefc124e962ebd48fb363b82e0b87c25fc"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.3", shell_output("#{bin}/ast-index version")
  end
end
