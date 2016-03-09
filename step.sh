#!/bin/bash

set -e

ENTRY_FILE="./index.${platform}.js"
BUNDLE_OUTPUT="${platform}/main.jsbundle"

MINIFY=""
ROOT=""
ASSETROOTS=""
OUT=""
URL=""

# Input params

if [[ "${dev}" == "true" ]] ; then
	DEV='--dev'
fi

if [[ "${minify}" == "true" ]] ; then
	MINIFY='--minify'
fi

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

react-native bundle --entry-file "$ENTRY_FILE" --platform ${platform} --bundle-output "$BUNDLE_OUTPUT" \
  ${DEV} \
  ${MINIFY} \
  ${ROOT} \
  ${ASSETROOTS} \
  ${OUT} \
  ${URL}
