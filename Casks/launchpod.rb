cask "launchpod" do
  version "1.0.0"
  sha256 "1b8aec57e837489dfbdf7acf9726363701c9c069dcc6ac5884aa6177a26202d8"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.0.0/Launchpod-#{version}-arm64.dmg"
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
