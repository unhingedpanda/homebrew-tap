cask "cans" do
  version "1.0.0"
  sha256 "e4f064d910eb3e2ef56a8e2de8c45b044e263cee8c61109454614526b3f9fbe5"

  url "https://github.com/unhingedpanda/cans/releases/download/v#{version}/Cans.zip"
  name "Cans"
  desc "Menu bar controller for Sony WH-1000XM4 and WH-1000XM5 headphones"
  homepage "https://github.com/unhingedpanda/cans"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cans.app"

  uninstall quit: "app.cans.mac"

  zap trash: "~/Library/Preferences/app.cans.mac.plist"

  caveats <<~EOS
    Cans is not notarized yet, so macOS blocks its first launch.
    Open Cans once, then go to System Settings → Privacy & Security
    and click "Open Anyway" next to Cans.
  EOS
end
