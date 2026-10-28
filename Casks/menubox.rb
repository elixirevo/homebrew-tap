cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.8"
  sha256 arm:   "0693cadbc5438ae6c963af97abbe8cde50a5f189890565b2252b9006204d9cb0",
         intel: "7d51350fadbf863bd60544a45e458db6a65f75d0c0d920a45e1175557aef8513"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.8/MenuBox-#{version}-#{arch}.dmg"
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
