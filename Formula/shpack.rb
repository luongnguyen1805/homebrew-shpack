class Shpack < Formula
  desc "Shell Script Bundler - package multiple scripts into a single executable"
  homepage "https://github.com/luongnguyen1805/shpack"
  license "None"
  version "v1.0.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.6/shpack-darwin-amd64.tar.gz", :using => :nounzip
      sha256 "f50de63d9a2b0904a110a4471b4a18a0fbf9a3e6aa87494fe15d056cba589518"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.6/shpack-darwin-arm64.tar.gz", :using => :nounzip
      sha256 "8ec03e69f032b04d025e56ada30094d3a7d13ccad20068f750012fbefed4ef43"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.6/shpack-linux-amd64.tar.gz", :using => :nounzip
      sha256 "ba3eb0118e06e4acbc85136f1ea9390b028753bb6c60d2529b7f8483093f4921"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.6/shpack-linux-arm64.tar.gz", :using => :nounzip
      sha256 "57c8ff2dca7359a7f9594ffdaf78e0b4066e5f02782ebeffd68c9891125855b6"
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
