class GitBranchSweep < Formula
  desc "Classify and delete done local git branches, protecting unpushed spikes"
  homepage "https://github.com/NaoyaMiyagawa/git-branch-sweep"
  url "https://github.com/NaoyaMiyagawa/git-branch-sweep/archive/refs/tags/v0.1.0.tar.gz"
  # Fill in after tagging v0.1.0:
  #   curl -fsSL https://github.com/NaoyaMiyagawa/git-branch-sweep/archive/refs/tags/v0.1.0.tar.gz | shasum -a 256
  sha256 "REPLACE_WITH_TARBALL_SHA256"
  license "MIT"

  depends_on "bash"
  depends_on "fzf"
  depends_on "gh"

  def install
    bin.install "git-branch-sweep"
  end

  test do
    assert_match "git-branch-sweep", shell_output("#{bin}/git-branch-sweep --help")
  end
end
