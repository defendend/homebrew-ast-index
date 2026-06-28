class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.49.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.1/ast-index-v3.49.1-darwin-arm64.tar.gz"
      sha256 "985fa2337e0d07a651bd9dd3c2c7ed919fa2e0dd6bb205290eef0490dbe72e75"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.1/ast-index-v3.49.1-darwin-x86_64.tar.gz"
      sha256 "db9533b48f244fadd7907f48fe44e18ef4e436fb267713e5e58274f864f7e7a8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.1/ast-index-v3.49.1-linux-arm64.tar.gz"
      sha256 "9bee798da5cc549693cdd2758a3467af5accab9e02b431eede218663a065dec4"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.1/ast-index-v3.49.1-linux-x86_64.tar.gz"
      sha256 "542a46e2c8b91fc8faaf7bf02a4bc5b425f482516196754be83c652eed196bf4"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.49.1", shell_output("#{bin}/ast-index version")
  end
end
