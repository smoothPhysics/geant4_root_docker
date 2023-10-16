#!/bin/bash

USER_ID="$(id -u)"
XSOCK=/tmp/.X11-unix
XAUTH=$HOME/.Xauthority

docker run \
    -it --rm \
    --volume=$XSOCK:$XSOCK:rw \
    --volume=$XAUTH:$XAUTH:rw \
    --env="XAUTHORITY=${XAUTH}" \
    --env="DISPLAY=${DISPLAY}" \
    --env="USER_ID=$USER_ID" \
    --net=host \
    --name="geant4" \
    geant4:source \
    tmux