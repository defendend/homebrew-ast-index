class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.50.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.50.0/ast-index-v3.50.0-darwin-arm64.tar.gz"
      sha256 "3d39909073b5c2b3d0fff2c593b8537937b76e240740ba9e351066c10e8f97fa"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.50.0/ast-index-v3.50.0-darwin-x86_64.tar.gz"
      sha256 "ddf6c9f3fb228634f010fab9cc8c7b1740560d199747432796cf4263a59d0b00"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.50.0/ast-index-v3.50.0-linux-arm64.tar.gz"
      sha256 "71a6bcdec2cf888bb5dd5321728837ff0b840c064018b9b36f9ddc4e4a1b5e91"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.50.0/ast-index-v3.50.0-linux-x86_64.tar.gz"
      sha256 "06923b60c80944ac0f7c2d774c1a4a188952872be1d12ddbf33db9af185d42df"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.50.0", shell_output("#{bin}/ast-index version")
  end
end
