cask "launchpod" do
  version "1.3.1"
  sha256 "ddfd6409a6e7abee14f73ece0819028ca0c1d54b08ca33bc0267031f12bd697f"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.3.1/Launchpod-#{version}-arm64.dmg"
  name "Launchpod"
  desc "Application launcher with a familiar grid, search, pages, and folders"
  homepage "https://github.com/elixirevo/launchpod"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Launchpod.app"

  zap trash: [
    "~/Library/Application Support/Launchpod",
    "~/Library/Caches/app.launchpod.Launchpod",
    "~/Library/Caches/Launchpod",
    "~/Library/Preferences/app.launchpod.Launchpod.plist",
  ]
end
