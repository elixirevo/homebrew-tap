cask "wewi" do
  arch arm: "arm64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "ab59ac08d7d4b0eceb17c44d5902bba0640771ef8048158479802baaff60e7ef",
         intel: "9e4082a4ec208af2cdce44bf3aadfa125562b5988f2fc0d8404b43621010060e"

  url "https://github.com/elixirevo/wewi/releases/download/v#{version}/wewi-#{version}-#{arch}.dmg"
  name "wewi"
  desc "Pin live web pages to your desktop as widgets"
  homepage "https://github.com/elixirevo/wewi"

  depends_on macos: :ventura

  app "wewi.app"

  caveats <<~EOS
    This app is currently distributed with ad-hoc signing.
    On another Mac, if Gatekeeper blocks launch, run:

      xattr -dr com.apple.quarantine /Applications/wewi.app
      open /Applications/wewi.app
  EOS
end
