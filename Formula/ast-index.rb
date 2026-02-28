class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.21.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.1/ast-index-v3.21.1-darwin-arm64.tar.gz"
      sha256 "9cd1e6b64a62aae071e613d001b91e811d4dd81efc91444997850021edfc740b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.1/ast-index-v3.21.1-darwin-x86_64.tar.gz"
      sha256 "25161cff88727b9030150e0db65c82c0a3e6b1b14c4c820a5dafc5bb22eadb72"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.21.1/ast-index-v3.21.1-linux-x86_64.tar.gz"
    sha256 "210eb74f4c6d5787bf8527e44df6967c7afd8a75916fbe504a3b3345e6361797"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.21.1", shell_output("#{bin}/ast-index version")
  end
end
