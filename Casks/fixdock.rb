cask "fixdock" do
  version "1.0.6"
  sha256 "8e60222355fe7f6143d0d518ab5eb2324ba64a6544c6b7888afcde550c8287b7"

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
