class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.49.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.2/ast-index-v3.49.2-darwin-arm64.tar.gz"
      sha256 "e150c1007faaed608957bf90ba20a491e9a4beecbdf0ca11d5eb1c3db7a98657"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.2/ast-index-v3.49.2-darwin-x86_64.tar.gz"
      sha256 "7510e4b6531586a317268adc1d9c7452a2b8705bcee59837b705048942c55939"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.2/ast-index-v3.49.2-linux-arm64.tar.gz"
      sha256 "383f4fb39799780fbac4b99c210319a07bc10b3f2f00bdd5a2f0ee2daa56aa33"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.49.2/ast-index-v3.49.2-linux-x86_64.tar.gz"
      sha256 "53062ca418342dd79ae8a617457b6f8a8b2181829b81e2d851cd5986b073cbbc"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.49.2", shell_output("#{bin}/ast-index version")
  end
end
