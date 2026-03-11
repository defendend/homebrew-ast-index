class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.28.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.28.0/ast-index-v3.28.0-darwin-arm64.tar.gz"
      sha256 "3cb7466427aa8a6a290330789209b91db9ff3a90a37f812dfed2f5938aa94d53"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.28.0/ast-index-v3.28.0-darwin-x86_64.tar.gz"
      sha256 "aad200623bd1442f480209356aa811ef470b2f25defd1f3d25222b325200bd93"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.28.0/ast-index-v3.28.0-linux-arm64.tar.gz"
      sha256 "f91b480d9c541200488f631a3aea3d1a93efcc06d9c1956bb3fee8de0eab00b3"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.28.0/ast-index-v3.28.0-linux-x86_64.tar.gz"
      sha256 "55d23b34277a7400f32fe638630805675d1266dcd57dc7d82de6960a29de82db"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.28.0", shell_output("#{bin}/ast-index version")
  end
end
