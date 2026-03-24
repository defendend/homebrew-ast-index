class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.32.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.3/ast-index-v3.32.3-darwin-arm64.tar.gz"
      sha256 "c1a9bf1720f5949d65c92f1ac4b72dd8cff76520ccc2f1c77324ddc1e936e0ed"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.3/ast-index-v3.32.3-darwin-x86_64.tar.gz"
      sha256 "a8ac596610e30a9ae8a361b043673b001072358456fb056aab9700546552e84c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.3/ast-index-v3.32.3-linux-arm64.tar.gz"
      sha256 "39c129c6ae1d8e48fcb0537407b8928ea01dd4f92e0f0860acb70c2cffd99828"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.32.3/ast-index-v3.32.3-linux-x86_64.tar.gz"
      sha256 "cf6a3fd6733063d6c9fab858d5205a871c4d3567aa8886f41eb2bd1a5adde566"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.32.3", shell_output("#{bin}/ast-index version")
  end
end
