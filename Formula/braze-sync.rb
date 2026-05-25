class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.16.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "f80608c3e784db9b37344fc7f6834b5c892e44d5ac8e3055c782ebd2f9d38c59"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "727fea34ea5a02adf9979af3a7e514ed7c54eb13713bd6b7ed0b063cdfb0b075"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13690e59a6d5927a42b5a4627f7aca3dea7a1a9c291a87ce9543fd990827d57c"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d172afed51907b6484d242e38949de6a235f447c40ed011f35e2d7ab12648e91"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
