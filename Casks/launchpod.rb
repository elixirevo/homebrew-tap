cask "launchpod" do
  version "1.3.2"
  sha256 "da8953c1ffb83336b0a450c3bd825883cce1069dff9590d00eebc6f287858ed4"

  url "https://github.com/elixirevo/launchpod/releases/download/v1.3.2/Launchpod-#{version}-arm64.dmg"
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
