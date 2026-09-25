cask "meepo" do
  version "0.2.10-beta"
  sha256 "a3c624781550b089741d3f5c5ac2767d4da4196ce75ee4f7845645c5b286df00"

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
