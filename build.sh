#!/bin/bash
CLI=docker
REGISTRY="quay.io/krsacme"
TAG="${TAG:-v0.1.2}"
NAME=${REGISTRY}"/trex-container-app:"${TAG}
$CLI build . -t $NAME && $CLI push $NAME
