class Revly < Formula
  desc "Revly CLI - AI Code Review Assistant for commits, stashes and unstashes"
  homepage "https://github.com/nareshkarthigeyan/revly"
  url "https://github.com/nareshkarthigeyan/revly/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "3c9a0d65eba50b84e1686fb093960fdaa7fe4e6af60fea76b547db94bd10dee3"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "./cmd/revly"
  end

  test do
    assert_match "Revly", shell_output("#{bin}/revly --version")
  end
end
