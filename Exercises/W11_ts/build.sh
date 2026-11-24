#!/bin/bash

set -e

tsc
cd dist
ln -sf ../index.html ./index.html || true
cp ../webgl-obj-loader.js ./webgl-obj-loader.js
cp -r ../shaders ./shaders

# Strip imports
sed --in-place '1d;2d;3d' ./ex10.js
