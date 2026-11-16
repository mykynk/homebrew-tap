# Written by scripts/homebrew-cask.mjs in https://github.com/mykynk/durbun for Dürbün 0.3.0; do not edit by hand.
cask "durbun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "d2cb42ae5048b1191119c1cfe702523a22fd39ba7d51887700797f25557d8116",
         intel: "7683a69e04996c89df5091e8c5cc7c97e1aa17cdf4bf47d38812e6af416a9b47"

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
