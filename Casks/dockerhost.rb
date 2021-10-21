cask "dockerhost" do
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"

  depends_on cask: "multipass"
  depends_on formula: "docker"
  depends_on formula: "jq"

  version "1.4.0"
  sha256 "9bb207f818ab0680f4b72f1fe47e8eb0b5a6b0f73f5abd3e6dc696555c76b676"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  binary "dockerhost"
end
