cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.3"
  sha256 arm:   "0a378641cd6990b743b231a223b2f24ad9b2f164cd78fcc2ea732c41d4919996",
         intel: "06e075a63b16873aa5e209e280b599fd7c3b8aeb852e96552c88e17a800211a1"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.3/MenuBox-#{version}-#{arch}.dmg"
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
