cask "cradle" do
  version "0.1.0"
  sha256 "798d36baaea2d190deb394b924e7c8d503b0b703d8eec72fc4f473961a39b95f"

  url "https://github.com/darshk07/app-releases/releases/download/v#{version}/Cradle.zip"
  name "Cradle"
  desc "Mirror iPhone, iPad and Android screens to your Mac over USB"
  homepage "https://getcradle.vercel.app/"

  depends_on macos: ">= :sonoma"
  depends_on formula: "scrcpy"
  depends_on cask: "android-platform-tools"

  app "Cradle.app"

  # Cradle isn't notarized yet, so clear the download flag that would make Gatekeeper block it.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Cradle.app"],
                   must_succeed: false
  end

  zap trash: [
    "~/Library/Preferences/local.cradle.plist",
    "~/Library/Saved Application State/local.cradle.savedState",
  ]
end
