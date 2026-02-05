class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.11.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.1/ast-index-v3.11.1-darwin-arm64.tar.gz"
      sha256 "5e1a53957cf19bc2c9774c20aaa51beced3920f3a94e1eeaf9cab32ec2661804"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.1/ast-index-v3.11.1-darwin-x86_64.tar.gz"
      sha256 "a5c4c2102afce6d03cd69cc21a6fb4ef84a67fe4d7d47c0138aa6c4ee3d276d4"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.1/ast-index-v3.11.1-linux-x86_64.tar.gz"
    sha256 "7ebf9eb52011c151f5a3d2bebe2db256b189fc63e85e06cd1cbdf6c2eb055343"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.11.1", shell_output("#{bin}/ast-index version")
  end
end
