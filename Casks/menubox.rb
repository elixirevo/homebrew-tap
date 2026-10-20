cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.6"
  sha256 arm:   "cd743ac31b59d207bbbeba3754ea7884669803a0ce63b6bc509fddf0ed47bf56",
         intel: "178cccabacea146515faba893fb333b99352b276678e25e3a6cd4761ef059f41"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.6/MenuBox-#{version}-#{arch}.dmg"
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
