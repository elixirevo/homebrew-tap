# elixirevo/homebrew-tap

Homebrew tap repository for ElixirEvo macOS applications.

## Add tap

```bash
brew tap elixirevo/tap
```

## Install casks

```bash
brew install --cask elixirevo/tap/wewi
```

## Available casks

- `wewi`

## Maintainer workflow

1. Create a new GitHub Release asset in the app repository.
2. Update version, sha256, and URL in `Casks/<token>.rb`.
3. Commit and push this tap repository.
