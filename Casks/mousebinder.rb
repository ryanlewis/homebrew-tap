cask "mousebinder" do
  version "0.1.0"
  sha256 "0609ebd25a6b2913a4987c3930079b2919e0fbb5d25f635e8518b586810d3abf"

  url "https://github.com/ryanlewis/mousebinder/releases/download/v#{version}/MouseBinder-#{version}.zip"
  name "MouseBinder"
  desc "Bind extra mouse buttons to Mission Control, App Exposé, Launchpad, or Show Desktop"
  homepage "https://github.com/ryanlewis/mousebinder"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MouseBinder.app"

  zap trash: "~/Library/Preferences/io.rlew.mousebinder.plist"
end
