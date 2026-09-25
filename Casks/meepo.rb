cask "meepo" do
  version "0.3.0"
  sha256 "e2334906165f4d47348dd8f19a8a3651468123321d890f67fa6c90467a70d8bb"

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
