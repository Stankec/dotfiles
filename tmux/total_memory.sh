#!/usr/bin/env bash

TOTAL_MEMORY=$(sysctl hw.memsize | sed 's/.*: //')
TOTAL_MEMORY_IN_MB=$(($TOTAL_MEMORY / 1024 / 1024))

echo "${TOTAL_MEMORY_IN_MB}"
