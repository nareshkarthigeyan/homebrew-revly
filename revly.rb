class Revly < Formula
  desc "Revly CLI - AI Code Review Assistant for commits, stashes and unstashes"
  homepage "https://github.com/nareshkarthigeyan/revly"
  url "https://github.com/nareshkarthigeyan/revly/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "Revly", shell_output("#{bin}/revly --version")
  end
end
