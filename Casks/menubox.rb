cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.5"
  sha256 arm:   "0a31e946adf32d181e8664dc6cda4928af9b85c89447d52156e01c02308ee9d7",
         intel: "30d8f0d8ac3338e61e8ffd2880eea9e7d9a7179804d4466a606a630f8dfb25b2"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.5/MenuBox-#{version}-#{arch}.dmg"
  name "MenuBox"
  desc "Menu bar utility for hiding and opening status bar apps"
  homepage "https://github.com/elixirevo/menubox"

  depends_on macos: :ventura

  app "MenuBox.app"

  uninstall quit: "com.elixirevo.MenuBox"

  zap trash: [
    "~/Library/Application Support/MenuBox",
    "~/Library/Preferences/com.elixirevo.MenuBox.plist",
    "~/Library/Preferences/com.elixirevo.StatusBox.plist",
  ]
end
