class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.32.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.2/ast-index-v3.32.2-darwin-arm64.tar.gz"
      sha256 "a89573fde79babc98c14b8414b137aeb4a5fff0a7a58c3e3e941cfd93d5721ae"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.2/ast-index-v3.32.2-darwin-x86_64.tar.gz"
      sha256 "98f73b17015f1c2866a55c059c0356e70393cef135f4761b00422f0458971f3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.2/ast-index-v3.32.2-linux-arm64.tar.gz"
      sha256 "2a45a35726251944fd929cffe2ba8f95d4f2ad0b2b3272cdae771a52469b7a56"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.2/ast-index-v3.32.2-linux-x86_64.tar.gz"
      sha256 "27623e43a95fb9013b92a0bf2c52d72d3dd93af414ebf93f0fc9ee034845be02"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.32.2", shell_output("#{bin}/ast-index version")
  end
end
