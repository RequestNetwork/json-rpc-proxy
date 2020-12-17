# JSON RPC Cache Proxy

This repo contains an Open-Resty caching proxy for JSON-RPC requests.
It caches JSON-RPC requests based on URI and the JSON-RPC `method` and `params` fields.

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

## Use
In our example started at the Run step, to get the latest Rinkeby block number we can do:
```sh
curl http://localhost:8080/v3/<YOUR API KEY> \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{"jsonrpc":"2.0","method":"eth_blockNumber","params": [],"id":1}
