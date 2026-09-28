class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.55.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.55.0/ast-index-v3.55.0-darwin-arm64.tar.gz"
      sha256 "eb7a7857b3eacfe3c32fb086c821d8eb7c99571b8db51ac10d816661f3a086bc"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.55.0/ast-index-v3.55.0-darwin-x86_64.tar.gz"
      sha256 "620fd725892cb1253a5d60979cf519c150d6fbf713383ecae5f68da842c99991"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.55.0/ast-index-v3.55.0-linux-arm64.tar.gz"
      sha256 "e8d579a9b8cecd530840713a7d818a15bfec44075dd03ac9b14109e1ab084a7f"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.55.0/ast-index-v3.55.0-linux-x86_64.tar.gz"
      sha256 "9a8569a306da32df6254026f67d31b276bcb3d0f8e697127f40fa9f9baac9fee"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.55.0", shell_output("#{bin}/ast-index version")
  end
end
