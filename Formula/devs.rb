class Devs < Formula
  desc "Project-aware tmux session manager with Claude Code session tracking"
  homepage "https://github.com/julianmateu/devs-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.1.0/devs-aarch64-apple-darwin.tar.gz"
      sha256 "156df200a986c517fb2201b91b624c53c4aa4be8cd07e06a0b104224320f77e6"
    end
    on_intel do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.1.0/devs-x86_64-apple-darwin.tar.gz"
      sha256 "af81514a876d6538ab9e3f8e0fc009636637410d302aac4a0deca68099afb106"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.1.0/devs-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c9fe50f5a3232249ca7d23e28a566e6e5c3aa288d04c45f0680e55380ec2589"
    end
    on_intel do
      url "https://github.com/julianmateu/devs-cli/releases/download/v0.1.0/devs-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7954f74ce8d13e3ac9c177dcb9fd3e67bcf1208fd90071bfa6c46c598f68f5f"
    end
  end

  def install
    bin.install "devs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/devs --version")
  end
end
