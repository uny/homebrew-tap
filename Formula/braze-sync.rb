class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "1613d8576c87125fe206551c883a7ed816c5bf1c98710ca029e09ba10c5ce8f1"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "9b6e0e83c8d0cc35c8a479b7a0302f76ded3570dbcb5b831d46cdc0431741fd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f34d226d233e57ea6d2b3997b810dfe5b6f066fea4ddbf3afb06ece7635b611"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9febbe9c32502ccfd338d108d76cce157a2d0b70483c142150b7ca803c88c423"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
