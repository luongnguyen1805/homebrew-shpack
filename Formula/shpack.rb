class Shpack < Formula
  desc "Shell Script Bundler - package multiple scripts into a single executable"
  homepage "https://github.com/luongnguyen1805/shpack"
  license "None"
  version "v1.0.8"

  on_macos do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.8/shpack-darwin-amd64.tar.gz", :using => :nounzip
      sha256 "22eaea04222ab7aa001dd63fe25f7aa012e54b6d6facd9f56f941265fa9e24aa"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.8/shpack-darwin-arm64.tar.gz", :using => :nounzip
      sha256 "a9613a058baeaa4e508ad78f7a94a2086588698225ba61cc8a1fc2b0b50acd0d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.8/shpack-linux-amd64.tar.gz", :using => :nounzip
      sha256 "6729073456b7f297e7758916c1526cb1da25c6780077637c577ace97139edef1"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.8/shpack-linux-arm64.tar.gz", :using => :nounzip
      sha256 "792b01a6ba295840c64c191999cbaad4a21940e942f9e387df75cde8adb767bb"
    end
  end

  def install
    system "tar", "-xzf", Dir["*.tar.gz"].first
    bin.install Dir["shpack-*"].first => "shpack"
  end

  test do
    system "#{bin}/shpack", "--version"
  end
end
