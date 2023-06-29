#!/bin/bash
set -euo pipefail

size=(128 256)
resources=(cronjob deploy ds hpa ing job ns pod pvc rs sts svc)
url="https://raw.githubusercontent.com/kubernetes/community/master/icons/png/resources/labeled/"

for s in ${size[@]}
do
    for r in ${resources[@]}
    do
        f="${r}-${s}.png"
        wget -O "${f}" "${url}${f}"
    done
done