# Written by scripts/homebrew-cask.mjs in https://github.com/mykynk/durbun for Dürbün 0.3.1; do not edit by hand.
cask "durbun" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "f9156a13af4ab9ca151e178697a8fba43225709088f89c5345e35f922c0ae315",
         intel: "e463841154be63efb97981ba3dc1e69f154ed215ef7efbcf18276b23bb422a18"

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
