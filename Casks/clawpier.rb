cask "clawpier" do
  version "0.2.2"

  on_arm do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_aarch64.dmg"
    sha256 "34f8f1966418c15d5925882139b0f711ca66ddd3acd36ad7e7dc2547cf5d4fe9"
  end

  on_intel do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_x64.dmg"
    sha256 "c6f77f5b47eee1e8196ec7beb0310f3b57946ff16bf865c155c91520f38d7513"
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
