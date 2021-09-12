# dockerhost

Setup a docker host on macOS in a lightweight Ubuntu vm and use docker on mac
without Docker Desktop.

Uses [multipass](https://multipass.run) to setup the vm, and sets up a Docker
daemon that listens on `tcp://<ip>:2375`.

## Usage

```
brew install 4d63/dockerhost/dockerhost
```

```
$ dockerhost
Usage: dockerhost <command>

Example:
  dockerhost create -c 1 -d 10G -m 2G
  eval $(dockerhost env)
  docker build ...

Commands:
  create  Create and start a vm hosting the docker daemon.
            -c Number of CPUs to allocate. Default: 1.
            -d Disk space to allocate. Default: 5G.
            -m Memory to allocate. Default: 1G.
  start   Start the vm.
  stop    Stop the vm.
  delete  Delete the vm.
  info    Display the IP, disk space, and other info about the VM.
  env     Output the DOCKER_HOST env var.
```
