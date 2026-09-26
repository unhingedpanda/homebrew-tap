cask "cans" do
  version "1.0.1"
  sha256 "5b474160ed99dc1c87a1a49035bfc204d5813d77b73cbab493d8f19bfff435f9"

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
