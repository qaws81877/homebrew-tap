cask "fixdock" do
  version "1.1.0"
  sha256 "b11284fc71ed43e2fe47c47737dc0f7dc7dea9d6f91dc234e1b1c3f4bcb7c177"

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
