update-formula-hash:
	sed -i.bak 's/^  sha256 .*$$/  sha256 "'"$$(shasum -a256 dockerhost | cut -d ' ' -f1)"'"/g' Formula/dockerhost.rb
