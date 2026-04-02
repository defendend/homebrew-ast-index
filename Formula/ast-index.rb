class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.33.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.2/ast-index-v3.33.2-darwin-arm64.tar.gz"
      sha256 "0701ee9f7de506ee3d3fe71fd371984d6ffa67c0604661c29ce44e38c77c4610"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.2/ast-index-v3.33.2-darwin-x86_64.tar.gz"
      sha256 "728c34bb888c837c954335143cc2ad0582d9f98bd0e49b6fe0d2382eb7297388"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.2/ast-index-v3.33.2-linux-arm64.tar.gz"
      sha256 "7cea2089394563b130b4d8c35acdca155bd592cc3e4d041d4408c8a719526c20"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.33.2/ast-index-v3.33.2-linux-x86_64.tar.gz"
      sha256 "2dee7afdf7256e97bfde879b0442c1981e172755f4bb12c2ec8f6064b7439fe5"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.33.2", shell_output("#{bin}/ast-index version")
  end
end
