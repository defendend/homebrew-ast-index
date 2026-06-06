class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.46.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.0/ast-index-v3.46.0-darwin-arm64.tar.gz"
      sha256 "298d2beacaf6b8599043ccb8e65b5b0358d80355909d0465f13a4172669590dd"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.0/ast-index-v3.46.0-darwin-x86_64.tar.gz"
      sha256 "1b7e665accba42121333f6cbac042e55e2e5e53949ff88581ac104db31064e7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.0/ast-index-v3.46.0-linux-arm64.tar.gz"
      sha256 "0cfde8e8582e424ab08670379bf4511f8c422572970970706db3f7f45c692623"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.46.0/ast-index-v3.46.0-linux-x86_64.tar.gz"
      sha256 "133cfab8daec33a41ae9b85c80149ff5442c73554c2aa9c14667d2bcfee3bb31"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.46.0", shell_output("#{bin}/ast-index version")
  end
end
