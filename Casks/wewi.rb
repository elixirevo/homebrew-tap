cask "wewi" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "bb126269239400160101bdf2f9637a2722076e7e3ee11c92d464a15a5e3c703a",
         intel: "0cd9ec40b1fec704f377ebd551e51fd9539115e5d6d8a7087d0594221dd52923"

  url "https://github.com/elixirevo/wewi/releases/download/v1.2.0/wewi-#{version}-#{arch}.dmg"
  name "wewi"
  desc "Pin live web pages to your desktop as widgets"
  homepage "https://github.com/elixirevo/wewi"

  depends_on macos: :ventura

  app "wewi.app"
end
