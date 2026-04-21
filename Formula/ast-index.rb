class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.39.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.39.0/ast-index-v3.39.0-darwin-arm64.tar.gz"
      sha256 "9efbd1e705d73f12d4ddf0377b6f44b97b112cdc6a8ed9f2470d124eed5a06f5"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.39.0/ast-index-v3.39.0-darwin-x86_64.tar.gz"
      sha256 "ba35b8a7f747caed327f1bdeaface2c2a728d60b488aacbd1c9eeb4121e6105f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.39.0/ast-index-v3.39.0-linux-arm64.tar.gz"
      sha256 "4f6403922dccc330ef69c241ec4984191e834e85aa54380a0f99686f87e9fc9e"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.39.0/ast-index-v3.39.0-linux-x86_64.tar.gz"
      sha256 "cca167f9f2d4d757148cec5abaf12bbfa9f297e8cf72f19cf8f4eca1aa181a01"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.39.0", shell_output("#{bin}/ast-index version")
  end
end
