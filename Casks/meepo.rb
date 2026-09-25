cask "meepo" do
  version "0.2.12-beta"
  sha256 "c8dce444aaf93e254fb71836dfbdcfaba1bbbdd3c10fe208e842871c0f3c3c6f"

  url "https://github.com/Azamatfg/meepo/releases/download/v#{version}/Meepo.zip"
  name "Meepo"
  desc "Tab through your Claude Code agents"
  homepage "https://github.com/Azamatfg/meepo"

  depends_on macos: :sonoma
  auto_updates true

  app "Meepo.app"
  binary "#{appdir}/Meepo.app/Contents/Resources/meepo"

  zap trash: [
    "~/.meepo",
    "~/Library/Group Containers/ZKXQWVLBRG.com.azamatfg.meepo",
  ]
end
