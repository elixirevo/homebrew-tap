cask "launchpod" do
  version "1.2.0"
  sha256 "3089f1802221f99b02712b52b204cde1e066a67b5c22ff88dcd897200d263912"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.2.0/Launchpod-#{version}-arm64.dmg"
  name "Launchpod"
  desc "Application launcher with a familiar grid, search, pages, and folders"
  homepage "https://github.com/elixirevo/launchpod"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Launchpod.app"

  zap trash: [
    "~/Library/Application Support/Launchpod",
    "~/Library/Caches/app.launchpod.Launchpod",
    "~/Library/Caches/Launchpod",
    "~/Library/Preferences/app.launchpod.Launchpod.plist",
  ]
end
