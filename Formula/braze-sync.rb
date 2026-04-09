class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "908e78e0deba3f70d0a88b536846b74d5f9a81bdc705bcb8a06e4613555fd63e"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "5d5947f4e7e41865f338ed82651b8637d2fdee9e144f60c53576415829d89c8c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b24c003c3ea5b124163344bfa48c1fc24851f2167657ec53dd880abcd506002d"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0241485a7dbd84cf346587d71721401f9a1b88fb722d28d77591bbbd3cc1109b"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
