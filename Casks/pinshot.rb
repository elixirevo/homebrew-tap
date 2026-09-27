cask "pinshot" do
  arch arm: "arm64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "6eadcb3a62b5c15ec3124ed9d9aad7018b6d95196f5401d80fdfa77bb728ae22",
         intel: "c33277f254953d44401784cec299cbbf671f10e166c2400f4c6d991a58fd0c4c"

  url "https://github.com/elixirevo/pinshot/releases/download/v1.2.0/PinShot-#{version}-#{arch}.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows"
  homepage "https://github.com/elixirevo/pinshot"

  auto_updates true
  depends_on macos: :monterey

  app "PinShot.app"
end
