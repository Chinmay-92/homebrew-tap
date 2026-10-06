cask "amber" do
  version "1.2.4"
  sha256 "72c179fc911ce60e7a680a0a5bb64f4686bac163767aadc4e8ef5f4ee780edb6"

  url "https://amber.arjco.de/downloads/Amber-#{version}.dmg"
  name "Amber"
  desc "Keeps the snippets, images and documents you reuse"
  homepage "https://amber.arjco.de/"

  livecheck do
    url "https://amber.arjco.de/downloads/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :ventura

  app "Amber.app"

  # Amber is sandboxed, so everything it keeps is inside its container. The
  # cards themselves also live in iCloud when sync is on, and `zap` deliberately
  # does not touch that: removing an app should not delete the copy on the
  # user's other devices.
  zap trash: [
    "~/Library/Application Scripts/com.sixsevenx.amber",
    "~/Library/Application Scripts/com.sixsevenx.amber.widgets",
    "~/Library/Containers/com.sixsevenx.amber",
    "~/Library/Containers/com.sixsevenx.amber.widgets",
  ]
end
