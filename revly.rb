class Revly < Formula
  desc "Revly CLI - AI Code Review Assistant for commits, stashes and unstashes"
  homepage "https://github.com/nareshkarthigeyan/revly"
  url "https://github.com/nareshkarthigeyan/revly/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "78acd4d4f66dcb857caeedb37888f0a3931260316a68ae9826c601ddbebd105d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Revly", shell_output("#{bin}/revly --version")
  end
end
