class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.48.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.0/ast-index-v3.48.0-darwin-arm64.tar.gz"
      sha256 "a524ce0bf131b2ceede10091d6c4fd21a049ea8a02c98cf69adb729c7f0087c6"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.0/ast-index-v3.48.0-darwin-x86_64.tar.gz"
      sha256 "bac46dbc81fd7ff3b1f537db7e9cec8778bb8f585a5c87587b8c5648c8e13b76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.0/ast-index-v3.48.0-linux-arm64.tar.gz"
      sha256 "1c8676577ed622207022eff31b2d26609916bb64da8372987ee9d64fc5018f78"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.48.0/ast-index-v3.48.0-linux-x86_64.tar.gz"
      sha256 "bee524abbf595d17062fd1af8828ff0e21b5a59473301e5ae291beed800233ed"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.48.0", shell_output("#{bin}/ast-index version")
  end
end
