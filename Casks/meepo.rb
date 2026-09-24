cask "meepo" do
  version "0.1.0-beta"
  sha256 "6b932d66a009c5f3d6d19789b99681c68b54733450508e6ab08bd19d43559a19"

  url "https://github.com/Azamatfg/meepo/releases/download/v#{version}/Meepo.zip"
  name "Meepo"
  desc "Tab through your Claude Code agents"
  homepage "https://github.com/Azamatfg/meepo"

  depends_on macos: :sonoma

  app "Meepo.app"

  zap trash: [
    "~/.meepo",
    "~/Library/Group Containers/ZKXQWVLBRG.com.azamatfg.meepo",
  ]
end
