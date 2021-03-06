cask "vysor" do
  version "4.0.17"
  sha256 "1570fd11bee1b140e8e17d1bd05319504c80e6004a1ce8760ebbdd3a25e8e0b7"

  url "https://github.com/koush/vysor.io/releases/download/v#{version}/Vysor-mac-#{version}.zip",
      verified: "github.com/koush/vysor.io/"
  name "Vysor"
  desc "Mirror and control your phone"
  homepage "https://www.vysor.io/"

  livecheck do
    url "http://vysornuts.clockworkmod.com/download/mac"
    strategy :header_match
  end

  app "Vysor.app"

  zap trash: [
    "~/Library/Application Support/Vysor",
    "~/Library/Caches/com.electron.vysor",
    "~/Library/Caches/com.electron.vysor.ShipIt",
    "~/Library/Preferences/com.electron.vysor.plist",
    "~/Library/Preferences/com.electron.vysor.helper.plist",
    "~/Library/Saved Application State/com.electron.vysor.savedState",
  ]
end
