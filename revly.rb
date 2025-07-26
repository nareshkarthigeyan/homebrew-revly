class Revly < Formula
  desc "Revly CLI - AI Code Review Assistant for commits, stashes and unstashes"
  homepage "https://github.com/nareshkarthigeyan/revly"
  url "https://github.com/nareshkarthigeyan/revly/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "024972fe26c1428dc5739ba54352a9163e48190ff12e6cf86b4172763443641d"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Revly", shell_output("#{bin}/revly --version")
  end
end
