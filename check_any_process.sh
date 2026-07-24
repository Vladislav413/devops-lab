#!/bin/bash
if [ -z "$1" ]; then
    echo "Нужно использовать ./check_any_process.sh <имя процесса>"
    exit 1
fi
if pgrep "$1" > /dev/null; then
    echo "[OK] Процесс '$1' запущен"
else
    echo "[WARN] Процесс '$1' не запущен"
fi
