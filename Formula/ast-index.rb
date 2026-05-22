class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.43.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.1/ast-index-v3.43.1-darwin-arm64.tar.gz"
      sha256 "2110bb3cc79be80dd8b4b54b191a77da931c7b0a74fa2549c6ec41c124a7aac4"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.1/ast-index-v3.43.1-darwin-x86_64.tar.gz"
      sha256 "5315752e17d61cc7ad15693b0d233c23cd16150635a3eb2ad466d8853e648777"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.1/ast-index-v3.43.1-linux-arm64.tar.gz"
      sha256 "eae12e3417cf0396cec234ae7bb0b776f30c1114d6ea4f8b39758c88928424d3"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.43.1/ast-index-v3.43.1-linux-x86_64.tar.gz"
      sha256 "bf0c69f6d160758d8be53bbb81258cdb104e6f99c5b523a8482a25336d79500b"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.43.1", shell_output("#{bin}/ast-index version")
  end
end
