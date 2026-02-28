class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.24.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-darwin-arm64.tar.gz"
      sha256 "7b06705515bf9746b4c9cc0f10e155cb024d646095908a103b080005f912cba8"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-darwin-x86_64.tar.gz"
      sha256 "0a2ff387fc8a91f0cc8a338ac7ca5ba35745bb5fdefe1585369982e2aa414d37"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.24.0/ast-index-v3.24.0-linux-x86_64.tar.gz"
    sha256 "ef457e9bd61d7218beff316fdbdb7e579df01aeb4fcd0254b1aacf8c52fce432"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.24.0", shell_output("#{bin}/ast-index version")
  end
end
