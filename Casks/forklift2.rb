cask "forklift2" do
  version "2.6.6"
  sha256 "0fa2bb7927d07c0c13b964b517b500ea6a77a6a569becba3ea392b2f82c05fce"

  url "https://download.binarynights.com/ForkLift#{version}.zip"
  name "ForkLift"
  desc "Finder replacement and FTP, SFTP, WebDAV and Amazon s3 client"
  homepage "https://www.binarynights.com/forklift/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: "forklift"

  app "ForkLift.app"

  zap trash: [
    "~/Library/Preferences/com.binarynights.ForkLift#{version.major}.plist",
    "~/Library/Caches/com.binarynights.ForkLift#{version.major}",
  ]
end
