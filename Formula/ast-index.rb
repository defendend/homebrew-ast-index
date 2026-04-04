class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.35.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.35.0/ast-index-v3.35.0-darwin-arm64.tar.gz"
      sha256 "2d474a5d78a8a7f608fe8f5dd9fa05198cee1f092cee53855df0b566010946cf"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.35.0/ast-index-v3.35.0-darwin-x86_64.tar.gz"
      sha256 "ae6f3acdad6aa578d6e2aab5688e7adc039a3327d926270e4a8328b443a41c4a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.35.0/ast-index-v3.35.0-linux-arm64.tar.gz"
      sha256 "9db7b5e0042a70eac4cd33cc31fbf71b848eba53a58072b398fafb18351420d4"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.35.0/ast-index-v3.35.0-linux-x86_64.tar.gz"
      sha256 "1bbea94e2f05f2c1c69e163f76f2f40a65768480eba3274fbd5bc5f0b55a1a6a"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.35.0", shell_output("#{bin}/ast-index version")
  end
end
