# typed: false
# frozen_string_literal: true

# Homebrew formula for Tokens Studio CLI
#
# Install: brew install the-phoenix-will-fly/studio-cli/studio
# Or:      brew tap the-phoenix-will-fly/studio-cli && brew install studio

class Studio < Formula
  desc "Tokens Studio CLI for design token management"
  homepage "https://tokens.studio"
  version "0.0.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/the-phoenix-will-fly/studio-cli/releases/download/v#{version}/studio_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end

    on_arm do
      url "https://github.com/the-phoenix-will-fly/studio-cli/releases/download/v#{version}/studio_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/the-phoenix-will-fly/studio-cli/releases/download/v#{version}/studio_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end

    on_arm do
      url "https://github.com/the-phoenix-will-fly/studio-cli/releases/download/v#{version}/studio_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256"
    end
  end

  def install
    bin.install "studio"

    # Generate and install shell completions
    generate_completions_from_executable(bin/"studio", "completion")
  end

  test do
    assert_match "Tokens Studio CLI", shell_output("#{bin}/studio --version")
  end
end
