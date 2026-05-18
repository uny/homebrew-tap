class BrazeSync < Formula
  desc "GitOps CLI for managing Braze configuration as code"
  homepage "https://github.com/uny/braze-sync"
  version "0.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-apple-darwin.tar.gz"
      sha256 "876f02d0f104946fecdc177b759c010d57107e6c4aad5a83ee23a3ef40864467"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-apple-darwin.tar.gz"
      sha256 "1ea4c56a6a8414e0a765732056911a4f4bfb40fe77b6d0994866313cd31e41e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d806c11c40dd85dc0927e8c8b6d8c81480ccd8e7f842a0c1f815a8871979664d"
    end

    on_intel do
      url "https://github.com/uny/braze-sync/releases/download/v#{version}/braze-sync-x86_64-unknown-linux-musl.tar.gz"
      sha256 "719cb738860c3a42c6bb9aca6b0a48e76323e21e51a331c98f83b8bb2ee0581c"
    end
  end

  def install
    bin.install "braze-sync"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/braze-sync --version")
  end
end
