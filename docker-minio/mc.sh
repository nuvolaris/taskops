#!/bin/sh

docker run --rm --network host \
  -v "$PWD":/data \
  -e MC_HOST_local=http://admin:admin123@localhost:9000 \
  minio/mc "$@"
