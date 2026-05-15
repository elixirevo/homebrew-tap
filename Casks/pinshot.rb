cask "pinshot" do
  version "1.1.1"
  sha256 "9aebe77a23c13174f221e67d5f1b05cc953d768054de8c9eed7c4bbac7b48564"

  url "https://github.com/elixirevo/pinshot/releases/download/v#{version}/PinShot-#{version}-universal.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows on macOS"
  homepage "https://github.com/elixirevo/pinshot"

  app "PinShot.app"
end
