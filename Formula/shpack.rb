class Shpack < Formula
  desc "Shell Script Bundler - package multiple scripts into a single executable"
  homepage "https://github.com/luongnguyen1805/shpack"
  license "None"
  version "v1.0.7"

  on_macos do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.7/shpack-darwin-amd64.tar.gz", :using => :nounzip
      sha256 "0dbd2e40a70005f4a4be2d402646183304b087c4151cb93c3cddeb7b6ebcdf1f"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.7/shpack-darwin-arm64.tar.gz", :using => :nounzip
      sha256 "4c794b486885bf4b3f20ff04af19fdd1b632222bea0888a6fe5b652caf9d11e4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://luongnguyen1805.github.io/shpack/v1.0.7/shpack-linux-amd64.tar.gz", :using => :nounzip
      sha256 "e79dff66fb58c503228bdf647a53a2b729b31eddb23ac2774d06c62388bbddad"
    else
      url "https://luongnguyen1805.github.io/shpack/v1.0.7/shpack-linux-arm64.tar.gz", :using => :nounzip
      sha256 "ea88c0f700473916237eb314461c5d15a323f572143e389c03c2a57912e77daf"
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
