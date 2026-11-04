cask "fixdock" do
  version "1.0.5"
  sha256 "d7ccce5fe3b99134550ecd1379d2b018a6f2ca2a8f27cd6e5a2de24b41493001"

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
