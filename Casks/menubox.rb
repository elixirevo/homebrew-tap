cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.2"
  sha256 arm:   "224cf4f7b389a5a3212ca7d59857aa35a834ca6aa632c5b7b7321f9622021820",
         intel: "30315e7a19695c13de07262a2336b4f621b554be203f4d715b635b6dd10ffe09"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.2/MenuBox-#{version}-#{arch}.dmg"
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
