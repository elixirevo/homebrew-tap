cask "pinshot" do
  arch arm: "arm64", intel: "x86_64"

  version "1.3.0"
  sha256 arm:   "c6287b8cb81a70ad41bf700f53d1e0a6d10f470526d44e3b8e3256f69da96d1a",
         intel: "96d7fa97fed4faa8076d83ed77b9fcf6fcc5f9d84c39f1f8f390d7be07352fcf"

  url "https://github.com/elixirevo/pinshot/releases/download/v1.3.0/PinShot-#{version}-#{arch}.dmg"
  name "PinShot"
  desc "Capture and pin screenshots as always-on-top windows"
  homepage "https://github.com/elixirevo/pinshot"

  auto_updates true
  depends_on macos: :ventura

  app "PinShot.app"
end
