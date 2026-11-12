cask "fixdock" do
  version "1.1.1"
  sha256 "060fffabeefa620e4c0a9ff1c50bf00812b6ca14e411de46c86d0aed906aa34d"

  url "https://github.com/qaws81877/FixDock/releases/download/v#{version}/FixDock-#{version}.zip"
  name "FixDock"
  desc "Menu bar tools for a repair bench"
  homepage "https://github.com/qaws81877/FixDock"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "FixDock.app"

  uninstall quit: "io.github.qaws81877.fixdock"

  zap trash: [
    "~/Library/Application Support/io.github.qaws81877.fixdock",
    "~/Library/Caches/io.github.qaws81877.fixdock",
    "~/Library/HTTPStorages/io.github.qaws81877.fixdock",
    "~/Library/Preferences/io.github.qaws81877.fixdock.plist",
    "~/Library/Saved Application State/io.github.qaws81877.fixdock.savedState",
  ]
end
