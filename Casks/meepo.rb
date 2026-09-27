cask "meepo" do
  version "0.5.0"
  sha256 "2942f435b64e8f4c4b483bed5996549a296ceced2e40e2e35d9aea6959919cc5"

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
