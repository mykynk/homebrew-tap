# Written by scripts/homebrew-cask.mjs in https://github.com/mykynk/durbun for Dürbün 0.3.2; do not edit by hand.
cask "durbun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "7fb0f0d42636a374a971376df71ff1c2c521e7ddb0201a784c980046a332c772",
         intel: "ae99e051472ed5c6ad3b4fad5cd775bad7f0d2ab9d210fd88d458ec45d333af1"

  url "https://github.com/mykynk/durbun/releases/download/v#{version}/Durbun-#{version}-#{arch}.dmg",
      verified: "github.com/mykynk/durbun/"
  name "Dürbün"
  desc "Live logs, network traffic and performance for Android and iOS apps"
  homepage "https://appnify.dev/durbun/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app updates itself (Check for Updates…): Homebrew leaves updating to it.
  auto_updates true
  depends_on macos: ">= :ventura"

  # The bundle name is NFD (u + U+0308), exactly as electron-builder writes it into the DMG.
  app "Du\u0308rbu\u0308n.app"

  uninstall quit: "dev.durbun.desktop"

  zap trash: [
    "~/.durbun",
    "~/Library/Application Support/Dürbün",
    "~/Library/Caches/dev.durbun.desktop.ShipIt",
    "~/Library/Preferences/dev.durbun.desktop.plist",
  ]
end
