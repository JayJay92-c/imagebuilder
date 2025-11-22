#!/bin/bash
echo "Packaging rootfs..."
if [ -d build/rootfs ]; then
  sudo tar -C build/rootfs -czf build/velvet-kukui-rootfs.tar.gz .
fi
if [ ! -f build/velvet-kukui-rootfs.tar.gz ] && [ -d build/rootfs-min ]; then
  sudo tar -C build/rootfs-min -czf build/velvet-kukui-rootfs.tar.gz .
fi
if [ ! -f build/velvet-kukui-rootfs.tar.gz ]; then
  echo "No rootfs found! Exiting."
  exit 1
fi
echo "Packaging complete."
