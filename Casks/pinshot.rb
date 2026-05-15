cask "pinshot" do
  version "1.1.1"
  sha256 "21763c1c79b6311e30a2e38c669f57408c53fa9d1ae2c49a66fbd87233aa205e"

  url "https://github.com/elixirevo/pinshot/releases/download/v#{version}/PinShot-#{version}-universal.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows on macOS"
  homepage "https://github.com/elixirevo/pinshot"

  app "PinShot.app"
end
