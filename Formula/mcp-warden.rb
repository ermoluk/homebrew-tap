# Formula for the ermoluk/homebrew-tap tap (`brew install ermoluk/tap/mcp-warden`).
# Rendered by packaging/render.sh from the release's SHA256SUMS and pushed to
# the tap by the release workflow. Installs the prebuilt release binary.
class McpWarden < Formula
  desc "Local-first credential broker MCP server for AI coding agents"
  homepage "https://github.com/ermoluk/mcp-warden"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.0/mcp-warden-aarch64-apple-darwin.tar.gz"
      sha256 "9164fef1e301c44dcc2a522fe400ded6ac3fc4b09e4ef8610cde43873a9747ee"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.0/mcp-warden-x86_64-apple-darwin.tar.gz"
      sha256 "3a801dd2b2250783b443b534bd5d1fdc5d7c7b788385035d7564f166cba8c397"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.0/mcp-warden-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a73696e5f96df11ea6d35dc4f7ebff2a42b8f704e391cfd917afde55322d173c"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.0/mcp-warden-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5201f01530e44018f1750b44d99f7596365a459f69ae04dc9120bcde389ed0b4"
    end
  end

  def install
    bin.install "mcp-warden"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-warden --version")
  end
end
