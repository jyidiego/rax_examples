#!/bin/bash

DISK='/data1 /ssd_volume /sata_volume'

for i in $DISK;do
  echo "DISK: ${i}"
  echo "LATENCY:"
  dd if=/dev/zero of=/${i}/latency.txt bs=512 count=10000 oflag=direct
  echo "STREAMING:"
  dd if=/dev/zero of=/${i}/streaming.txt bs=1G count=1 oflag=direct
  echo
done
