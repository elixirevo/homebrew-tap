cask "pinshot" do
  version "1.0.1"
  sha256 "bf0a00196f247a5024ee76b1b299052bc99b5922a727ce8251470ca1dbd065cc"

  url "https://github.com/elixirevo/pinshot/releases/download/v#{version}/PinShot-#{version}-universal.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows on macOS"
  homepage "https://github.com/elixirevo/pinshot"

  app "PinShot.app"
end
