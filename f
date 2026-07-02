#!/bin/sh
kmutil configure-boot -c "/Volumes/w/m1n1.bin" --raw --entry-point 2048 --lowest-virtual-address 0 -v "/Volumes/M1N1 Sandbox"
reboot
