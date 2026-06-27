#!/usr/bin/env bash

set -e

echo "=================================="
echo "Building BusyBox"
echo "=================================="

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

mkdir -p "$ROOT/out"
mkdir -p "$ROOT/build"

cd "$ROOT"

echo "Extracting source..."

rm -rf build/busybox

tar -xf sources/busybox-*.tar.* -C build

cd build/busybox-*

echo "BusyBox source extracted successfully."
echo "Compilation will be added in the next step."
