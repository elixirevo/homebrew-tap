cask "menubox" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5.4"
  sha256 arm:   "793d8f17676abf7e87897420d3f4b0cc1eb1f297c2f895ebce7a5533620c4020",
         intel: "483e2979773b635422610160ad58506cf67db99b37199425a1f06a19e77b6ef7"

  url "https://github.com/elixirevo/menubox/releases/download/v1.5.4/MenuBox-#{version}-#{arch}.dmg"
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
