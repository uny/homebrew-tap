class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.9.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "c32fa3dcf4faa3f4a0b11b78b67f29cf344ca0d5b5c5ad428eab9ba8c4e197b3"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "4e321daad5f0e96b6ccf46adaa40dff79674fbb06bf0da2fe3bcb24148fc8c92"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0765f855573c3dce3fd72557d6b8c62f9a5f1ab03c7780ccb5cad1258cc78833"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2bb3361d668838134f20e569fae1ed71472e982ef7402460101b53b7ff8ea916"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
