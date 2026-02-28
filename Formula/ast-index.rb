class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.22.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.0/ast-index-v3.22.0-darwin-arm64.tar.gz"
      sha256 "2de6235cae60d5fbf61e222d0fa845e3bf0c9467a7ecdb92fcc4314d45354910"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.0/ast-index-v3.22.0-darwin-x86_64.tar.gz"
      sha256 "9ca956637ab874992cb3b6d2dfbdcbdfd1a1c407757807e15ec085bd932b65d2"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.22.0/ast-index-v3.22.0-linux-x86_64.tar.gz"
    sha256 "9963c70100f66a7339dbb1cafa49536cdbbf9f63801a092a5d7be287a11bde8a"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.22.0", shell_output("#{bin}/ast-index version")
  end
end
