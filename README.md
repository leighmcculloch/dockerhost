# dockerhost

Setup a docker host on macOS in a lightweight Ubuntu vm and use docker on mac without Docker Desktop.

Uses multipass to setup the vm.

## Usage

```
brew install 4d63/dockerhost/dockerhost
```

```
$ dockerhost create
$ eval $(dockerhost env)
$ docker ps
$ docker build ...
$ dockerhost delete
```