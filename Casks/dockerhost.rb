cask "dockerhost" do
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"

  depends_on cask: "multipass"
  depends_on formula: "docker"
  depends_on formula: "jq"

  version "1.6.0"
  sha256 "afa545e4dc27e762f3e4f1637bc44a36dbb34778fb40aaf8756551e129aa5779"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  binary "dockerhost"
end
