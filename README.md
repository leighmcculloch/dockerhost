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
  dockerhost create -c 2 -d 10G -m 2G
  dockerhost mount $HOME $HOME
  eval $(dockerhost env)
  docker build ...

Commands:
  create  Create and start a vm hosting the docker daemon.
            -c Number of CPUs to allocate. Default: 2.
            -d Disk space to allocate. Default: 10G.
            -m Memory to allocate. Default: 2G.
  start   Start the vm.
  stop    Stop the vm.
  delete  Delete the vm.
  info    Display the IP, disk space, and other info about the vm.
  ip      Display the IP of the vm.
  env     Output the DOCKER_HOST environment variable.
  exec    Execute a command in the vm.
  mount   Mount a folder into the vm.
            <source> The folder on the host.
            <target> The folder on the dockerhost. (Optional)
  umount  Unmount a folder that was mounted into the vm.
            <target> The folder on the dockerhost. (Optional)
```
