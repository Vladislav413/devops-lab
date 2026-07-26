#!/bin/bash

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

if [ "$USAGE" -gt 80 ]; then
    echo "[$TIMESTAMP] [WARN] Диск забит на $USAGE%!" >> disk.log
    echo "[$TIMESTAMP] [WARN] Диск забит на $USAGE%!"
else
    echo "[$TIMESTAMP] [OK] Диск в норме: $USAGE%" >> disk.log
    echo "[$TIMESTAMP] [OK] Диск в норме: $USAGE%"
fi
