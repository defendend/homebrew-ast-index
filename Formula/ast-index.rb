class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.41.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.41.0/ast-index-v3.41.0-darwin-arm64.tar.gz"
      sha256 "cadd9af9c3a52a45263bf85a7750aefd179368e945c5b3b962561b7f3a6fa22a"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.41.0/ast-index-v3.41.0-darwin-x86_64.tar.gz"
      sha256 "83bcd0cf3228c1b0ec8c64c3b60e2d48f1fe59ffc22d0fd0efe0f7aaf7dee402"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.41.0/ast-index-v3.41.0-linux-arm64.tar.gz"
      sha256 "df832beff4ba84018a02b3cba528ac6a7be0d6a0243a94d8e84840ac73aa860e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.41.0/ast-index-v3.41.0-linux-x86_64.tar.gz"
      sha256 "a6b418b667ee1dd26bcd4d53e981188fcf540387f382c1eaf1009fa5a4f6e385"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.41.0", shell_output("#{bin}/ast-index version")
  end
end
