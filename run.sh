#!/bin/bash
if [ -z "$NOCACHE" ]; then
    export NOCACHE=false
fi
docker build --no-cache=$NOCACHE --rm=true -t nginx-lua-test . && docker run -p 4000:4000 nginx-lua-test
