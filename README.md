# Homebrew Tap for Tokens Studio CLI

This is the official Homebrew tap for [Tokens Studio CLI](https://github.com/the-phoenix-will-fly/studio-cli/tree/main/packages/go-cli).

## Installation

```bash
brew install the-phoenix-will-fly/studio-cli/studio
```

Or add the tap first:

```bash
brew tap the-phoenix-will-fly/studio-cli
brew install studio
```

## Updating

```bash
brew upgrade studio
```

## Usage

```bash
# Initialize a project
studio init

# Login to Tokens Studio
studio login

# Add a token configuration
studio add

# Pull tokens
studio pull

# Watch for real-time updates
studio watch
```

## About

The Tokens Studio CLI is a fast, secure command-line tool for syncing design tokens from Tokens Studio to your codebase.

- **Zero Dependencies**: Single binary, no Node.js required
- **Cross-Platform**: macOS (Intel & Apple Silicon), Linux (x64 & ARM64)
- **Secure**: SOC2/ISO 27001 compliant with OAuth 2.0 authentication
- **Shell Completions**: Bash, Zsh, Fish completions included

## Alternative Installation

### npm

```bash
npm install -g @tokens-studio/studio-cli
# or
npx @tokens-studio/studio-cli
```

### Direct Download

```bash
curl -fsSL https://tokens.studio/install.sh | sh
```

## Links

- [CLI Documentation](https://github.com/the-phoenix-will-fly/studio-cli/tree/main/packages/go-cli)
- [Tokens Studio](https://tokens.studio)
