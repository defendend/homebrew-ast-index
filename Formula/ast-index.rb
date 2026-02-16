class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.16.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-darwin-arm64.tar.gz"
      sha256 "7494910fedb881bfd6cb150192a3a057be45f1ea711ad9d5d4255cff6990655f"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-darwin-x86_64.tar.gz"
      sha256 "d83cda11ac75651196e35dfdd235e15f77a27e94f97f06dd117edbc568dc3b0f"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.16.1/ast-index-v3.16.1-linux-x86_64.tar.gz"
    sha256 "9cbcc9fa71b0b7d9e264553b9b95e2868295305aab771637becbab31bcd6ce2f"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.16.1", shell_output("#{bin}/ast-index version")
  end
end
