class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.47.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.1/ast-index-v3.47.1-darwin-arm64.tar.gz"
      sha256 "2bb92d1627ab1358c546db1c1960d4e4ddcd5c40b194f8fdec1022e9f34ee821"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.1/ast-index-v3.47.1-darwin-x86_64.tar.gz"
      sha256 "2dbb4a2b9d84ba002095be86d2922bc608726b555220241d83883fd9c969fcfc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.1/ast-index-v3.47.1-linux-arm64.tar.gz"
      sha256 "e8e271d715c793a05107e551357b28b4645d399cebf823f60fc200f44ecf90db"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.47.1/ast-index-v3.47.1-linux-x86_64.tar.gz"
      sha256 "e5c6a8517e9f83080b7d137aa59a6b62b2edb8959cdee54ad5b97604e3bdb23e"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.47.1", shell_output("#{bin}/ast-index version")
  end
end
