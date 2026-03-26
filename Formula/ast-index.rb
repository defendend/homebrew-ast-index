class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.33.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.0/ast-index-v3.33.0-darwin-arm64.tar.gz"
      sha256 "0f057d24497414a3ce1956592af88308db67455ebb7a862882a22bd63da13f0c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.0/ast-index-v3.33.0-darwin-x86_64.tar.gz"
      sha256 "22f1e28b00f16070dc2daab3d8d7afa7891ecaf239aee4ee55ede806a572d87f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.0/ast-index-v3.33.0-linux-arm64.tar.gz"
      sha256 "d53a8671f3e7f53665fd8949d2dd76fcfc53b285b2d92a3cc55a552e6f4277f0"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.0/ast-index-v3.33.0-linux-x86_64.tar.gz"
      sha256 "237e5a0fd6c59ac5fbc47733fbb196138771e0ffe27ee227dd865f65d090410d"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.33.0", shell_output("#{bin}/ast-index version")
  end
end
