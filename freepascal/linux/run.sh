#!/bin/bash
make
for exe in build/HelloWorld_*; do
    echo "=== Running $exe ==="
    ./$exe
done
