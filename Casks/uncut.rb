cask "uncut" do
  version "0.0.4"
  sha256 "95f0fc740d39c6bdd9d830a91ce533ccec7e85d53741dc1f9fe27b48f8417e98"

  url "https://github.com/blazejkustra/uncut/releases/download/v#{version}/Uncut-#{version}-arm64-mac.zip"
  name "Uncut"
  desc "AI-first video editor that works with Claude Code"
  homepage "https://uncut.video/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Uncut.app"

  zap trash: [
    "~/Library/Application Support/Uncut",
    "~/Library/Caches/com.blazejkustra.uncut",
    "~/Library/Caches/com.blazejkustra.uncut.ShipIt",
    "~/Library/Caches/uncut-updater",
    "~/Library/HTTPStorages/com.blazejkustra.uncut",
    "~/Library/Preferences/com.blazejkustra.uncut.plist",
    "~/Library/Saved Application State/com.blazejkustra.uncut.savedState",
  ]
end
