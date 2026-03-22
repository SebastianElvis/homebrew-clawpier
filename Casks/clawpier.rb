cask "clawpier" do
  version "0.3.1"

  on_arm do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_aarch64.dmg"
    sha256 "8293e4032134e00d9ec0ef1505acb18274b3e430ff04ff543c378695c198516f"
  end

  on_intel do
    url "https://github.com/SebastianElvis/clawpier/releases/download/v#{version}/ClawPier_v#{version}_x64.dmg"
    sha256 "328041cdaa99faa927db28828dc5625de87ebec3c21177410292d21883d2cf60"
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
