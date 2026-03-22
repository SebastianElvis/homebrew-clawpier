cask "clawpier" do
  version "0.3.2"

  on_arm do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_aarch64.dmg"
    sha256 "3feac450d27e1f109bb0bcfd5c503ad1e8b82e6090018c5a4fd513facf9d83bf"
  end

  on_intel do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_x64.dmg"
    sha256 "28fccb240992b8265229a69589a9f6d0c686c4951bd5856a76b2578b245739d5"
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
