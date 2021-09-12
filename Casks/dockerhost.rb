cask "dockerhost" do
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"

  depends_on cask: "multipass"
  depends_on formula: "docker"
  depends_on formula: "jq"

  version "1.3.0"
  sha256 "51c71285a36180ee0733e26d0d9d648e0467e305e76cd6a2bb057e9398b5c2e1"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  binary "dockerhost"
end
