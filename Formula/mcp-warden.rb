# Formula for the ermoluk/homebrew-tap tap (`brew install ermoluk/tap/mcp-warden`).
# Rendered by packaging/render.sh from the release's SHA256SUMS and pushed to
# the tap by the release workflow. Installs the prebuilt release binary.
class McpWarden < Formula
  desc "Local-first credential broker MCP server for AI coding agents"
  homepage "https://github.com/ermoluk/mcp-warden"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.4/mcp-warden-aarch64-apple-darwin.tar.gz"
      sha256 "f1549c2c62d32eb0c849121311d426b9f3fb03795908e84d108d7506072e4509"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.4/mcp-warden-x86_64-apple-darwin.tar.gz"
      sha256 "498bb81618d5513b9eec79be2ea5132ae884c98b22fea9bd24fa55b98ecb0edb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.4/mcp-warden-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09a464111d353421f34bda1a69ed436abeb44863ff493da1e1d1706f39ed2357"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.4/mcp-warden-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa56c82d28051882be0106abb68fd3a913fd55d0e8aee396e95a41e1f08cae41"
    end
  end

  def install
    bin.install "mcp-warden"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-warden --version")
  end
end
