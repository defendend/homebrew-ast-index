class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.13.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.4/ast-index-v3.13.4-darwin-arm64.tar.gz"
      sha256 "e6df33cd3eabe8443ef6f138ac77f8029f368a8bc3bb0eb04a3de7ebfb112038"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.4/ast-index-v3.13.4-darwin-x86_64.tar.gz"
      sha256 "ddd4dcd1c0d09c5c02d5f179d50b558e55646fa7206f0e301694853dd806c058"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.13.4/ast-index-v3.13.4-linux-x86_64.tar.gz"
    sha256 "ce1410e46f04d29821cd11ebf40986926cc879b7ff5b72a942422eb221c3ae16"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.13.4", shell_output("#{bin}/ast-index version")
  end
end
