cask "dockerhost" do
  desc "Setup a docker host on macOS in a lightweight Ubuntu vm."
  homepage "https://github.com/leighmcculloch/dockerhost"

  depends_on cask: "multipass"
  depends_on formula: "docker"
  depends_on formula: "jq"

  version "1.3.1"
  sha256 "ecf0ff5e971a5b804fb495d9986d853617d51366fbdd5b12985bbdd9d14a5665"

  url "https://raw.githubusercontent.com/leighmcculloch/dockerhost/v#{version}/dockerhost"

  binary "dockerhost"
end
