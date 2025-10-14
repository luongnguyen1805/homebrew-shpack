class Shpack < Formula
  desc "Shell Script Bundler - package multiple scripts into a single executable"
  homepage "https://github.com/luongnguyen1805/shpack"
  license "None"
  version "v1.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.4/shpack-darwin-amd64.tar.gz", :using => :nounzip
      sha256 "94e95b6c1417e08b9e66d25d50f3916a7965507e01af3b256a4a51532e21c1bb"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.4/shpack-darwin-arm64.tar.gz", :using => :nounzip
      sha256 "d8b69ee6cf9434a8fe7005b1be2c98aada99b5090e233bb20548b0b3173406ea"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.4/shpack-linux-amd64.tar.gz", :using => :nounzip
      sha256 "4609af13f45ddf058fbc8c2577c5d76c27bf81042d63cdb93bacde8997efca52"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.4/shpack-linux-arm64.tar.gz", :using => :nounzip
      sha256 "30ffbffaf94fa96f009ef70fc7cb893a731d38958e6ea945396bf1599e54edfa"
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
