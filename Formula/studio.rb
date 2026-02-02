# typed: false
# frozen_string_literal: true

# Homebrew formula for Tokens Studio CLI
#
# Install: brew install The-Phoenix-Will-Fly/studio-cli/studio
# Or:      brew tap The-Phoenix-Will-Fly/studio-cli && brew install studio

class Studio < Formula
  desc "SOC2-compliant CLI for Tokens Studio - manage design tokens"
  homepage "https://tokens.studio"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/The-Phoenix-Will-Fly/studio-on-rails/releases/download/cli-v#{version}/studio-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_INTEL_SHA256"
    end

    on_arm do
      url "https://github.com/The-Phoenix-Will-Fly/studio-on-rails/releases/download/cli-v#{version}/studio-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER_MACOS_ARM_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/The-Phoenix-Will-Fly/studio-on-rails/releases/download/cli-v#{version}/studio-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_INTEL_SHA256"
    end

    on_arm do
      url "https://github.com/The-Phoenix-Will-Fly/studio-on-rails/releases/download/cli-v#{version}/studio-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM_SHA256"
    end
  end

  def install
    bin.install "studio"
  end

  test do
    assert_match "studio", shell_output("#{bin}/studio --version")
  end
end
