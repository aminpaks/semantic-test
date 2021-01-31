#!/bin/sh

PACKAGE_VERSION=`node -p "require('./package.json').version"`

echo "Preparing changelogs from previous version $PACKAGE_VERSION..."

yarn run changelog -m "v$PACKAGE_VERSION...HEAD"
# npm version minor
# echo "version: $VERSION"
# echo $(pwd)
