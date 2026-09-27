cask "meepo" do
  version "0.6.0"
  sha256 "6c604be21b1a751df64a0eadcd4e67bd3deac6b9230b3d677c029c9d3af8d66c"

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
