class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.44.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.2/ast-index-v3.44.2-darwin-arm64.tar.gz"
      sha256 "f58c771a5e77a36fdd6f8558b7673ac0cbdeddc71acae47ba438ca1ccdd664d3"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.2/ast-index-v3.44.2-darwin-x86_64.tar.gz"
      sha256 "2912dcfcb8ae3e9cc83b1ab92a40a1d187410c1f738f3463fc30e7a4b068810a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.2/ast-index-v3.44.2-linux-arm64.tar.gz"
      sha256 "b99ea1db3876e7c5b45b3900fcb09c77e4527ffe0efb0c60d932a74e6156de7f"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.44.2/ast-index-v3.44.2-linux-x86_64.tar.gz"
      sha256 "cfb7476a1d8e0dbfefc8c4256772947743893d827ebedb9033bc74b572f4ab95"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.44.2", shell_output("#{bin}/ast-index version")
  end
end
