class Dockerhost < Formula
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"
  bottle :unneeded

  depends_on "multipass"
  depends_on "docker"
  depends_on "jq"

  version "1.0.0"
  sha256 ""

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  def install
    bin.install "dockerhost"
  end

  test do
    system "#{bin}/dockerhost"
  end
end