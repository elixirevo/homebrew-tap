# elixirevo/homebrew-tap

Homebrew tap repository for ElixirEvo macOS applications.

## Add tap

```bash
brew tap elixirevo/tap
```

## Install casks

```bash
brew install --cask elixirevo/tap/wewi
brew install --cask elixirevo/tap/pinshot
brew install --cask elixirevo/tap/menubox
```

## Available casks

- `wewi`
- `pinshot`
- `menubox`

## Maintainer workflow

1. Create a new GitHub Release asset in the app repository.
2. Update version, sha256, and URL in `Casks/<token>.rb`.
3. Commit and push this tap repository.

## Upgrading from StatusBox

The `status-box` cask was renamed to `menubox`. Run `brew update`, then `brew upgrade --cask elixirevo/tap/menubox`. If needed, run `brew migrate --cask status-box` first. MenuBox imports existing settings; re-enable permissions and Launch at Login for the renamed app.
