cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.0"
  sha256 arm:   "caa379f9d63b8875cf10fffad89e390ad4abcf620bb46c62ffb97aa67dc7839e",
         intel: "1f00cc59ced9f9c12fe43a814757d27112f172fb6d518d9161edaf808c3b1bf5"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.0/MenuBox-#{version}-#{arch}.dmg"
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
