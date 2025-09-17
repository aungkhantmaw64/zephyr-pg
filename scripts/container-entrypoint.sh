#!/bin/bash

source ${ZEPHYR_ROOT}/.venv/bin/activate

echo "Zephyr Project dev environment is ready!"
exec "$@"
