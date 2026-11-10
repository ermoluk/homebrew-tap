# Formula for the ermoluk/homebrew-tap tap (`brew install ermoluk/tap/mcp-warden`).
# Rendered by packaging/render.sh from the release's SHA256SUMS and pushed to
# the tap by the release workflow. Installs the prebuilt release binary.
class McpWarden < Formula
  desc "Local-first credential broker MCP server for AI coding agents"
  homepage "https://github.com/ermoluk/mcp-warden"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.1/mcp-warden-aarch64-apple-darwin.tar.gz"
      sha256 "bcd3491c43745e4b78b61a3abbb61c92e2b3e43a604c4c078e64522380ce32be"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.1/mcp-warden-x86_64-apple-darwin.tar.gz"
      sha256 "a99824fea6495855e0abfe5786c8889529567dd1b55b669f742dd0715a57066c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.1/mcp-warden-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3e08e46461f8b5ebfce55a8754c21c631ac73449ef770fe4ee647bf1ea1acf7f"
    end
    on_intel do
      url "https://github.com/ermoluk/mcp-warden/releases/download/v0.6.1/mcp-warden-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f162972078c8086fd5abe36bb2b209e72a3aae09a6f1ffafd986621ac7252995"
    end
  end

  def install
    bin.install "mcp-warden"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-warden --version")
  end
end
