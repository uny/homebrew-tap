class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.17.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "eb91ae825a5bb39ffb50bd06a74f1653aa671355a4e63094cc4a8a0314460d90"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "8f7fb32fdd6254f1392d8e9a9a9d820ac85b04c5781064d78ba379b5e9518d18"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6f399ef988fc89deeded629ec28aba8d17e39ebc66f9a6f47867c25329e263c"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ed9f719d96107e9828954fae00fd598d654282abfe70004a224384f38b903bed"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
