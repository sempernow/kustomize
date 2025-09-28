#!/usr/bin/env bash

tree 2>/dev/null 

up(){
    kubectl kustomize overlays/production |kubectl apply -f -
}

down(){
    kubectl kustomize overlays/production |kubectl delete -f -
}

"$@"

[[ $1 ]] ||
    printf "\n  %s\n"  "USAGE: bash ${BASH_SOURCE##*/} "'up|down'

