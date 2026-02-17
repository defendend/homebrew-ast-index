class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.0/ast-index-v3.17.0-darwin-arm64.tar.gz"
      sha256 "6bc794e80934145151deb23005c0c185408d8ea78ca142d1ada33373a21c321c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.0/ast-index-v3.17.0-darwin-x86_64.tar.gz"
      sha256 "8bc840a443f936f81d90b937d9fe998de1599d65cd90aac7aa0df23940e570e8"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.17.0/ast-index-v3.17.0-linux-x86_64.tar.gz"
    sha256 "a505087018c3104e7caebc6629a14cc96b79bc6f072e5215d962c00966e92f49"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.17.0", shell_output("#{bin}/ast-index version")
  end
end
