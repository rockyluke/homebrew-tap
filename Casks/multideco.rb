cask "multideco" do
  name "MultiDeco"
  desc "Dive decompression planning software"
  homepage "https://www.hhssoftware.com/multideco/"
  version "4.22.0"
  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_arm_intel.dmg&keytag=1608915&qwerty=#{Time.now.to_i}&os=mac_intel"
  sha256 "51a5a7551ffd054cf034e37fa0e53bd322703625b553f5abcde0967f6ca91562"

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
