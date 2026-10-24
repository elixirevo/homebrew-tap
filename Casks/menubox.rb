cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.7"
  sha256 arm:   "a0ba75da11755c573b05259236c2ec5a08e77710893da1505f579279e9f3c099",
         intel: "fe6c5a7fd4611333967f8854d96b33c36ab14a961e7548ae3ffa32b77c4ed959"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.7/MenuBox-#{version}-#{arch}.dmg"
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
