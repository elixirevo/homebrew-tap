cask "launchpod" do
  version "1.3.0"
  sha256 "f135dbf204c2021ca07bd5172da4826d78f47da678071c1cfbf90b624d5c4e17"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.3.0/Launchpod-#{version}-arm64.dmg"
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
