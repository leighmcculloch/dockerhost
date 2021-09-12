update-formula:
	sed -i.bak 's/^  sha256 .*$$/  sha256 "'"$$(shasum -a256 dockerhost | cut -d ' ' -f1)"'"/g' Formula/dockerhost.rb
	sed -i.bak 's/^  version .*$$/  version "'"$$(git rev-list --count HEAD)".0.0'"/g' Formula/dockerhost.rb
