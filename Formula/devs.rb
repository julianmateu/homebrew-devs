class Devs < Formula
  desc "Project-aware tmux session manager with Claude Code session tracking"
  homepage "https://github.com/julianmateu/devs-cli"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.2.0/devs-aarch64-apple-darwin.tar.gz"
      sha256 "400c6a8eaf89c27230999ad5b176fff23e95afbd9ab05242263d7877bdd0ac8f"
    end
    on_intel do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.2.0/devs-x86_64-apple-darwin.tar.gz"
      sha256 "e280cda6da719e65a611b0e9e3ccdc6c014bcbd08bc5e70f611957a560e2549a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.2.0/devs-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ad12dd600082bd24a8d77dc352b06b0e09522fe965cf29c88fec818d2085750"
    end
    on_intel do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.2.0/devs-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5673e2a8a8211aae5565ff577f6343a13e6d4e581ba0a4165a22cec4af7a5808"
    end
  end

  def install
    bin.install "devs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devs --version")
  end
end
