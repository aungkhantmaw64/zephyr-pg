#!/bin/bash

echo "Install Python Dependencies"

mkdir -p ${ZEPHYR_ROOT}

set -e

pushd ${ZEPHYR_ROOT}
python3 -m venv .venv
source .venv/bin/activate
pip install west
west init
west update
west zephyr-export
west packages pip --install
pushd zephyr
echo "Install zephyr sdk with west"
west sdk install
popd
popd

echo "Done!"
