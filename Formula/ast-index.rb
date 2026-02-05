class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.0/ast-index-v3.11.0-darwin-arm64.tar.gz"
      sha256 "e8f8e1fb8c1198fc682adb3265de963ae1b1fae2e8c4bc8e0b08ba1773c598d2"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.0/ast-index-v3.11.0-darwin-x86_64.tar.gz"
      sha256 "f3943001b3cb93f2ae5e4db3ea89391e25e3374d4704d07fb6ed3fe25ad89563"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.11.0/ast-index-v3.11.0-linux-x86_64.tar.gz"
    sha256 "6f1a231cef41342ed8f8727d12f495f59d47d91c1a6173ddd3372a56f3b22bae"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.11.0", shell_output("#{bin}/ast-index version")
  end
end
