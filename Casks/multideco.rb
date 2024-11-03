cask "multideco" do
  name "MultiDeco"
  desc "Dive decompression planning software"
  homepage "https://www.hhssoftware.com/multideco/"
  version "4.22.0"
  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_arm_intel.dmg&keytag=1608834&qwerty=#{Time.now.to_i}&os=mac_intel"
  sha256 "675bd4f4e07931bbed24af60502813d15dcb87807debd4be40dd4d7b9609460b"

  livecheck do
    url "https://www.hhssoftware.com/multideco/download.php"
    strategy :page_match
    regex(/Mac[[:space:]]v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  pkg "MultiDeco_arm_intel.pkg"

  uninstall quit:    "com.hhssoftware.pkg.MultiDeco",
            pkgutil: "com.hhssoftware.pkg.MultiDeco"

  zap trash: [
    "~/Library/MultiDeco",
    "~/Library/Preferences/com.hhssoftware.multideco.plist",
    "~/Library/Saved Application State/com.hhssoftware.multideco.savedState",
  ]
end
