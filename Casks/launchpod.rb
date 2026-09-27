cask "launchpod" do
  version "1.1.0"
  sha256 "df5ab19666aada3fc39ab386585c54dca67f412cf02f9ca3ccc8cbaaeb3e52c3"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.1.0/Launchpod-#{version}-arm64.dmg"
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
