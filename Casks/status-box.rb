cask "status-box" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.0"
  sha256 arm:   "2332c5b5a73bf808f1a59c4119c65437f09666afe6c78a8a9d9b42249fbff72a",
         intel: "b6caf31a3040c33a381ad0b2201f9cb8f91741858c9375849425ef815c338146"

  url "https://github.com/elixirevo/statusbox/releases/download/v#{version}/StatusBox-#{version}-#{arch}.dmg"
  name "Status Box"
  desc "Menu bar utility for hiding and opening status bar apps"
  homepage "https://github.com/elixirevo/statusbox"

  depends_on macos: :ventura

  app "StatusBox.app"

  uninstall quit: "com.elixirevo.StatusBox"

  zap trash: "~/Library/Preferences/com.elixirevo.StatusBox.plist"
end
