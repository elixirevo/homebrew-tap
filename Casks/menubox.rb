cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.1"
  sha256 arm:   "15b41743f8b06e2ba1fbfb425bf6d2d322498e39a36bf1fbdf4a72f93613cb34",
         intel: "00cc2ffe3a7478160c9ae6cc79ba39d911ae567458a2970c8168351a22006892"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.1/MenuBox-#{version}-#{arch}.dmg"
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
