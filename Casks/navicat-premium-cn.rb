cask "navicat-premium-cn" do
  version "16.1.4"
  sha256 "d0dfcd4897796067f22d2ac8d8865c5079cae2f29601cc940870e5e8354a43bf"
  url "https://download.navicat.com.cn/download/navicat#{version.major_minor.no_dots}_premium_cs.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com.cn/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com.cn/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"
end