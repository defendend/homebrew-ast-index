class AstIndex < Formula
  desc "Fast code search CLI for Android/Kotlin/Java, iOS/Swift/ObjC, Perl, Proto, WSDL, and C++ projects"
  homepage "https://github.com/defendend/Claude-ast-index-search"
  url "https://github.com/defendend/Claude-ast-index-search/releases/download/v3.7.0/ast-index-3.7.0-darwin-arm64.tar.gz"
  sha256 "43c4e2fdbf535a3d547bb7924b6a1cc1093b0d75089cd3b71a748bf36d230677"
  license "MIT"
  version "3.7.0"

  def install
    bin.install "ast-index"
  end

  test do
    assert_match "ast-index v3.7.0", shell_output("#{bin}/ast-index version")
  end
end
