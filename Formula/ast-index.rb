class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.49.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.0/ast-index-v3.49.0-darwin-arm64.tar.gz"
      sha256 "a67f92a5812336c74613c48f69f5fde9823bcb922da5f05aa5db34b826daaedd"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.0/ast-index-v3.49.0-darwin-x86_64.tar.gz"
      sha256 "cf7524420859d128e6802215478d1adb8651471c44442ffeab892bf515d1d4c6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.0/ast-index-v3.49.0-linux-arm64.tar.gz"
      sha256 "b1c2d0c3ced9c14cc0174ba273a08269e2f75512c85d50d5e5fa1c85b8cabc73"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.0/ast-index-v3.49.0-linux-x86_64.tar.gz"
      sha256 "326c17fea77f757254dcc96858d6ecd47c208cc48237eaa16b6a7a85e2e96d5d"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.49.0", shell_output("#{bin}/ast-index version")
  end
end
