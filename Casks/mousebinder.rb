cask "mousebinder" do
  version "0.1.1"
  sha256 "e85ee8614596ba48143780954bce815512793a279f43eae2970b6d2740e1f5f5"

  url "https://github.com/ryanlewis/mousebinder/releases/download/v#{version}/MouseBinder-#{version}.zip"
  name "MouseBinder"
  desc "Bind extra mouse buttons to Mission Control, App Exposé, Launchpad, or Show Desktop"
  homepage "https://github.com/ryanlewis/mousebinder"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MouseBinder.app"

  zap trash: "~/Library/Preferences/io.rlew.mousebinder.plist"
end
