class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.23.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.23.0/ast-index-v3.23.0-darwin-arm64.tar.gz"
      sha256 "8187fcda3f1bd840fd508e934a5eeed7a96c9a3d7bc5d6332ccb3237aa7fa37b"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.23.0/ast-index-v3.23.0-darwin-x86_64.tar.gz"
      sha256 "55392838fd4c311aabdb61aa46dcec174115b9c70d8bd887b5e2d2a94c599c48"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.23.0/ast-index-v3.23.0-linux-x86_64.tar.gz"
    sha256 "b9fd1eadca2ebc2165dad07afea36542ce18a460467a6074834aefecddde3e9f"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.23.0", shell_output("#{bin}/ast-index version")
  end
end
