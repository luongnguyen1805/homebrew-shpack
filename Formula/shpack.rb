class Shpack < Formula
  desc "Shell Script Bundler - package multiple scripts into a single executable"
  homepage "https://github.com/luongnguyen1805/shpack"
  license "None"
  version "v1.0.5"

  on_macos do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.5/shpack-darwin-amd64.tar.gz", :using => :nounzip
      sha256 "1d8f30eccfec68098f26e6b168dbec754f0f7028d99d30a7efd2e5a6d77d9f8b"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.5/shpack-darwin-arm64.tar.gz", :using => :nounzip
      sha256 "300c91891616ceac779d91ba327c4c59f0160d96f94d98d4257ae04f1be5834c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.5/shpack-linux-amd64.tar.gz", :using => :nounzip
      sha256 "11e97acda06f380fbe5603f80ade92fa825a6c27c4c6f637f2dd7cd37f95ebb8"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.5/shpack-linux-arm64.tar.gz", :using => :nounzip
      sha256 "180d293c5b503efc86d95ffb2ac4d816048a594e7bc17608a95f148b15424914"
    end
  end

  def install
    system "tar", "-xzf", Dir["*.tar.gz"].first
    bin.install "shpack"
  end

  test do
    system "#{bin}/shpack", "--version"
  end
end
