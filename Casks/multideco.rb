cask "multideco" do
  name "MultiDeco"
  desc "Dive decompression planning software"
  homepage "https://www.hhssoftware.com/multideco/"
  version "4.26.2"
  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_arm_intel.dmg&keytag=1628020&qwerty=#{Time.now.to_i}&os=mac_intel"
  # url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_arm_intel.dmg&keytag=1608915&qwerty=#{Time.now.to_i}&os=mac_intel"
  sha256 "09ff3c5fb9b9284b251640b3144c668dce56332f01d2eea55daa1e87225f67c2"

  livecheck do
    url "https://www.hhssoftware.com/multideco/download.php"
    strategy :page_match
    regex(/Mac[[:space:]]v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates false

  pkg "MultiDeco_arm_intel.pkg"

  uninstall quit:    "com.hhssoftware.pkg.MultiDeco",
            pkgutil: "com.hhssoftware.pkg.MultiDeco"

  zap trash: [
    "~/Library/MultiDeco",
    "~/Library/Preferences/com.hhssoftware.multideco.plist",
    "~/Library/Saved Application State/com.hhssoftware.multideco.savedState",
  ]
end
