#!/bin/bash

# run
# run_cmd="/bin/bash"
run_cmd="go run main.go"
img="denden047/spider"

docker build -t ${img} docker && \
docker run -it --rm \
    -v="/${PWD}:/go/app" \
    -w="/go/app/src" \
    ${img} \
    ${run_cmd}
