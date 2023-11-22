#!/usr/bin/env bash

self=$(readlink -f "$0")
basedir=$(dirname "$self")

cd ${basedir}/../../..

podman run --rm -v ${PWD}:/docs docker.io/squidfunk/mkdocs-material gh-deploy --config-file packages/documentation/mkdocs.yml --force
