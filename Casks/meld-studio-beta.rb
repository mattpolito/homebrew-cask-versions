cask "meld-studio-beta" do
  version "0.3.0.2"
  sha256 :no_check

  url "https://packages.streamwithmeld.com/MeldStudioInstaller.dmg",
      verified: "streamwithmeld.com/"
  name "Meld Studio"
  desc "Live streaming and recording software"
  homepage "https://www.meldstudio.co/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Meld Studio.app"

  zap trash: [
    "~/Library/Application Support/MeldStudio",
    "~/Library/HTTPStorages/co.meldstudio.MeldStudioUpdater",
    "~/Library/LaunchAgents/co.meldstudio.MeldStudioUpdater.wake.plist",
    "~/Library/LaunchAgents/co.meldstudio.keystone.agent.plist",
    "~/Library/LaunchAgents/co.meldstudio.keystone.xpcservice.plist",
    "~/Library/MeldStudio",
  ]
end