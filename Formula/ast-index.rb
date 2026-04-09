class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.36.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.2/ast-index-v3.36.2-darwin-arm64.tar.gz"
      sha256 "04026a137f5ae657772a415dfc2f8d7a6bb9c6234fab4644724652901f829b75"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.2/ast-index-v3.36.2-darwin-x86_64.tar.gz"
      sha256 "03c2c3c0755651237848b120665dff6fbbb429e0b7ca443aa14e28723f88ae82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.2/ast-index-v3.36.2-linux-arm64.tar.gz"
      sha256 "373f274ea0b06be67c0ab7ee1bbb99141c1f05d6309944cebd65dc3892ed0906"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.36.2/ast-index-v3.36.2-linux-x86_64.tar.gz"
      sha256 "4814ec3ccf86105d315a9de60cdb1cd3231176db502a2a0beac145f455575aed"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.36.2", shell_output("#{bin}/ast-index version")
  end
end
