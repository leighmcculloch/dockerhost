cask "dockerhost" do
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"

  depends_on cask: "multipass"
  depends_on formula: "docker"
  depends_on formula: "jq"

  version "1.2.0"
  sha256 "3e13fc5eb080096012694cf7eb323cb07e2bf1515d448c951cfd9e26ac103f85"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  binary "dockerhost"
end
