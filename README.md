# JSON RPC Cache Proxy

This repo contains an open-resty cache proxy for JSON RPC requests.

## Prerequisites
To build and run this project you need [docker](https://www.docker.com/) installed and running on your machine.

## Build
To build the docker image, go to the root directory of this repository and run:
```sh
docker build -t json-rpc-proxy .
```

## Run
To run the docker image, you can run the following command:
```sh
docker run --env "ADDRESS=rinkeby.infura.io" --env "CACHE_TIME=5s" -p 8080:80 json-rpc-proxy
```
Where:
* __ADDRESS__: is the address of the JSON RPC destination.
* __CACHE_TIME__: is the cache TTL (time to live)