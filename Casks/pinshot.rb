cask "pinshot" do
  version "1.1.2"
  sha256 "e1e1eb47cbd155ed2842a5a446189b645d0d0953cf4d6f84633cf16211d82838"

  url "https://github.com/elixirevo/pinshot/releases/download/v#{version}/PinShot-#{version}-universal.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows"
  homepage "https://github.com/elixirevo/pinshot"

  app "PinShot.app"
end
