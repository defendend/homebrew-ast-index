class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.53.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.53.0/ast-index-v3.53.0-darwin-arm64.tar.gz"
      sha256 "99b678a2635ecc5077b40ce761685ad68287ea71609ec70c9245a446dac8715c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.53.0/ast-index-v3.53.0-darwin-x86_64.tar.gz"
      sha256 "d82e3e35e8fa9d430af2418465112bdedff919a45611b91a4bfd9edeb24b63f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.53.0/ast-index-v3.53.0-linux-arm64.tar.gz"
      sha256 "b57c80eb068fcda481d632c7b018bb1a202b32ecad049108175cd3a446d6c282"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.53.0/ast-index-v3.53.0-linux-x86_64.tar.gz"
      sha256 "dc94f218040e51844104c9254e7a803e11b622f7a7b2feaca2bc2df4ea0fda21"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.53.0", shell_output("#{bin}/ast-index version")
  end
end
