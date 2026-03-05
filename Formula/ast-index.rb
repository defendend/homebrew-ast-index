class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.26.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-darwin-arm64.tar.gz"
      sha256 "650b621b8208f6cc0b502aef6872732835763596dfa15a75895c7806c8bd86a9"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-darwin-x86_64.tar.gz"
      sha256 "df1d81aa468c078e8b5dc9608d17f5e92cbcccdfc4d5fc87da463c79e5c8f23e"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.26.2/ast-index-v3.26.2-linux-x86_64.tar.gz"
    sha256 "c410f6ac55c46b0cf0e62f09d701a1c9ac61416a83da3f0c436d400d4be3a15c"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.26.2", shell_output("#{bin}/ast-index version")
  end
end
