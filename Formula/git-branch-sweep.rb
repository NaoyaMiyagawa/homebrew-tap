class GitBranchSweep < Formula
  desc "Classify and delete done local git branches, protecting unpushed spikes"
  homepage "https://github.com/NaoyaMiyagawa/git-branch-sweep"
  url "https://github.com/NaoyaMiyagawa/git-branch-sweep/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "4c9566faa947e03407e84bfa6e34a6ed494316ccc2209d284a8a31508ecbd2a9"
  license "MIT"

  depends_on "bash"
  depends_on "fzf"
  depends_on "gh"

  def install
    bin.install "git-branch-sweep"
    zsh_completion.install "completions/_git-branch-sweep"
  end

  test do
    assert_match "git-branch-sweep", shell_output("#{bin}/git-branch-sweep --help")
  end
end
