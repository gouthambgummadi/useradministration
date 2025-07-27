#!/bin/bash

echo "🔍 Gathering MacBook System Information..."

echo "➡️  Model Info:"
system_profiler SPHardwareDataType | grep "Model"

echo "➡️  Serial Number:"
system_profiler SPHardwareDataType | awk '/Serial/ {print $4}'

echo "➡️  macOS Version:"
sw_vers

echo "➡️  CPU:"
sysctl -n machdep.cpu.brand_string

echo "➡️  Memory:"
system_profiler SPMemoryDataType | grep "Size"

echo "➡️  Storage:"
diskutil list

echo "➡️  Battery Health:"
system_profiler SPPowerDataType | grep -i "cycle count\|condition"

echo "➡️  Uptime:"
uptime

echo "✅ Done."
