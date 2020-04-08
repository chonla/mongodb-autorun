#!/usr/bin/env bash

if [ -d '/data/autorun.d' ]; then
    cd /data/autorun.d
    for f in `ls *.sh | sort -V`; do
        mongo -u ${MONGODB_USERNAME} -p ${MONGODB_PASSWORD} ${MONGODB_CONNECTION} "/data/autorun.d/${f}"
    done;
fi
