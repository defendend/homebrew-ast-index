class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.18.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.2/ast-index-v3.18.2-darwin-arm64.tar.gz"
      sha256 "4f6b95a0cbc6dfc9af1775407e9cd19adec3005c7e2c8f0a67e9778e83738fa6"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.2/ast-index-v3.18.2-darwin-x86_64.tar.gz"
      sha256 "6ccf4fe6e5ca8d1f178925878dad654871ace1d122e9826c78f5db702c0569c0"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.18.2/ast-index-v3.18.2-linux-x86_64.tar.gz"
    sha256 "b6ed1869a4688f3b2681a0dd44b869dde62ea1a700dc0d4ba8af2102f1964e90"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.18.2", shell_output("#{bin}/ast-index version")
  end
end
