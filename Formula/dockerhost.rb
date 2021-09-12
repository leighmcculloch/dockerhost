class Dockerhost < Formula
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"
  bottle :unneeded

  depends_on :multipass
  depends_on :docker
  depends_on :jq

  version "1.0.1"
  sha256 "8aad86aa7ca4b4fa599204fe51c7c3be23389c2b36a3d18df28b8377b5234228"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  def install
    bin.install "dockerhost"
  end

  test do
    system "#{bin}/dockerhost"
  end
end
