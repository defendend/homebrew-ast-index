class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.10.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.2/ast-index-v3.10.2-darwin-arm64.tar.gz"
      sha256 "f57267e2a05762db9ec6a2803e0a67ddd8a498212706c21670c29eb7ada27102"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.2/ast-index-v3.10.2-darwin-x86_64.tar.gz"
      sha256 "833c2a7455c1f60bdc7c617ded80ccf4afb0e73affbd7c27919cf11d680be6cb"
    end
  end

  on_linux do
    url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.10.2/ast-index-v3.10.2-linux-x86_64.tar.gz"
    sha256 "72d40d507e19d15e67ada39844818dd35874e54446fc369803721219e5e339ae"
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.10.2", shell_output("#{bin}/ast-index version")
  end
end
