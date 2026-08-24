cask "mousebinder" do
  version "0.1.2"
  sha256 "f9766f6e2c92b0e3e7135c02535cf1ab6e4f6c1b24e941b249ef09488e02aff3"

  url "https://github.com/ryanlewis/mousebinder/releases/download/v#{version}/MouseBinder-#{version}.zip"
  name "MouseBinder"
  desc "Bind extra mouse buttons to Mission Control, App Exposé, Launchpad, or Show Desktop"
  homepage "https://github.com/ryanlewis/mousebinder"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "MouseBinder.app"

  zap trash: "~/Library/Preferences/io.rlew.mousebinder.plist"
end
