[![Build](https://github.com/AndreaRicchi/yocto-dockerfiles/actions/workflows/build.yml/badge.svg)](https://github.com/AndreaRicchi/yocto-dockerfiles/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# yocto-dockerfiles

## Running container
```bash
docker run -it --privileged -v $(pwd):/home --name <your-conatiner-name> yocto-ubuntu20.04
```

## Starting container
```bash
docker start -i <your-conatiner-name>
```