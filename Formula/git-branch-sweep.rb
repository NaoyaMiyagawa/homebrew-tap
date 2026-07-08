class GitBranchSweep < Formula
  desc "Classify and delete done local git branches, protecting unpushed spikes"
  homepage "https://github.com/NaoyaMiyagawa/git-branch-sweep"
  url "https://github.com/NaoyaMiyagawa/git-branch-sweep/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5be1fa94037e3337b22590093265b1dbd54b3508f86bdf269c1b9bd78112c239"
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
