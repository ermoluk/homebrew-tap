# Formula for the ermoluk/homebrew-tap tap (`brew install ermoluk/tap/mcp-warden`).
# Rendered by packaging/render.sh from the release's SHA256SUMS and pushed to
# the tap by the release workflow. Installs the prebuilt release binary.
class McpWarden < Formula
  desc "Local-first credential broker MCP server for AI coding agents"
  homepage "https://github.com/ermoluk/mcp-warden"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.3/mcp-warden-aarch64-apple-darwin.tar.gz"
      sha256 "0e35a3abe6a43b8644edaeb18373ab91136712a261eb77497b2407cf9c4f269b"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.3/mcp-warden-x86_64-apple-darwin.tar.gz"
      sha256 "c20c7b6d06cde4c3dc740ff36b634b5f169a61d9e1681859968413046b602d55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.3/mcp-warden-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b878e72279e47a3c53fd5745bed25c582778f9dc84ad8dc2b19fa31d3e4c4258"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.5.3/mcp-warden-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9311f88c3ea1ca1a1fc04adc985fe391598e314b484306cd1d14dbecbf6d7a4"
    end
  end

  def install
    bin.install "mcp-warden"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-warden --version")
  end
end
