#!/usr/bin/env bash
# Install kustomize binary

ver=${1:-5.7.1}
os=linux
arch=amd64
releases=https://github.com/kubernetes-sigs/kustomize/releases
url=$releases/download/kustomize/v$ver/kustomize_v${ver}_${os}_${arch}.tar.gz

echo "Releases: $releases"

kustomize version 2>/dev/null |grep -q v$v &&
    kustomize version &&
        exit 0

curl -sfSL $url |tar -xz &&
    sudo install kustomize /usr/local/bin/ &&
        kustomize version ||
            echo ERR : $? : NOT installed
