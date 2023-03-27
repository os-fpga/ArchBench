#!/bin/bash

set -e
files=$(find ../Testcases/ -type f -name "tool.conf")

for i in $files; do
    sed -i 's/xml_tag=latest/xml_tag=v1.6.25/g' $i
    echo $i
done
