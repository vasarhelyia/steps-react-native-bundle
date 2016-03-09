#!/bin/bash

set -e

ENTRY_FILE="./index.${platform}.js"
BUNDLE_OUTPUT="${platform}/main.jsbundle"

ROOT=""
ASSETROOTS=""
OUT=""
URL=""

# Input params

if [ ! -z "${root}" ] ; then
    ROOT="--root ${root}"
fi

if [ ! -z "${assetRoots}" ] ; then
    ASSETROOTS="--assetRoots ${assetRoots}"
fi

if [ ! -z "${out}" ] ; then
    OUT="--out ${out}"
fi

if [ ! -z "${url}" ] ; then
    URL="--url ${url}"
fi

# Bundle

set -x

react-native bundle --entry-file "${ENTRY_FILE}" --platform ${platform} --bundle-output "${BUNDLE_OUTPUT}" \
  --dev ${dev} \
  --minify ${minify} \
  ${ROOT} \
  ${ASSETROOTS} \
  ${OUT} \
  ${URL} \
  ${options}
