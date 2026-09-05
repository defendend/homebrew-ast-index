class AstIndex < Formula
  desc "Fast code search CLI for Android, iOS, TypeScript, Rust, Ruby, C#, Python, Go, Perl, C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  license "MIT"
  version "3.52.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.52.0/ast-index-v3.52.0-darwin-arm64.tar.gz"
      sha256 "e89b7053993171257e8a47e0dd016f148c6aaaf28c6498a97750e47af1c097b7"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.52.0/ast-index-v3.52.0-darwin-x86_64.tar.gz"
      sha256 "559855a4a905ec0eb80bafa6b909f4cfafae2a2d971277a236d27c1f9dcb4582"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.52.0/ast-index-v3.52.0-linux-arm64.tar.gz"
      sha256 "59db7da741e8946d9183f0ac0b6eff7161f850165d02adb0c4265b33fc6fd18c"
    else
      url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.52.0/ast-index-v3.52.0-linux-x86_64.tar.gz"
      sha256 "d5823549c988890a5d55bc4874e1efe505b075b1a06ec6b04fc475e43ca5f99a"
    end
  end

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.52.0", shell_output("#{bin}/ast-index version")
  end
end
