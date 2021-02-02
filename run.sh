#!/bin/bash

# run
run_cmd="go run main.go"
img="denden047/spider"

docker build -t ${img} docker && \
docker run -it --rm \
    -v="/${PWD}:/work" \
    -w="/work/src" \
    ${img} \
    ${run_cmd}
