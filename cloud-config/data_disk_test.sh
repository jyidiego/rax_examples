#!/bin/bash

nova boot --image 271e1090-77ad-4400-a1f7-73a922aca8e2 --key-name wwidemo --flavor performance1-2 --user-data combo.txt --config-drive True --poll data_disk_test
