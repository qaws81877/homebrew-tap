cask "fixdock" do
  version "1.0.3"
  sha256 "0d13c3f8ef1b92aa0f5e22c8a4803d414f45dfc9991ef163f42a68a4fcaf9d1d"

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
