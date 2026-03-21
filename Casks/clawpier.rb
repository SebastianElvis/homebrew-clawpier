cask "clawpier" do
  version "0.3.0-rc2"

  on_arm do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_aarch64.dmg"
    sha256 "07a420968ea70399d3f6cca09b3ba18baa7496d7b7d9c6bb252da6731375ca9e"
  end

  on_intel do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_x64.dmg"
    sha256 "b4a4e0f513142362a2f2e58e17dd1dd3501f7e6082dc1525b913da0e7bcb018e"
  end

  name "ClawPier"
  desc "GUI for managing Dockerized OpenClaw bot instances"
  homepage "https://github.com/SebastianElvis/clawpier"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "docker"

  app "ClawPier.app"

  zap trash: [
    "~/.config/clawpier",
    "~/Library/WebKit/com.clawpier.manager",
  ]
end
