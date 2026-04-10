cask "clawpier" do
  version "0.4.0"

  on_arm do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_aarch64.dmg"
    sha256 "c3b2dcdc7842a9c75a52f936e3d5948601f7b4e1ed99a7e788d54944cf89053a"
  end

  on_intel do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_x64.dmg"
    sha256 "4c852c784eb8731485a38849a91aacda3058ff5420281d436602894bda1ac473"
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
