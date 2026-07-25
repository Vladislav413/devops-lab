#!/bin/bash
if [ -z "$1" ]; then
    echo "Добавьте первый аргумент"
    exit 1
fi
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
if pgrep "$1" > /dev/null; then
    echo "[$TIMESTAMP] [OK] Процесс '$1' запущен" >> process.log
    echo "[OK] Процесс '$1' запущен"
else
    echo "[$TIMESTAMP] [WARN] Процесс '$1' не запущен" >> process.log
    echo "[WARN] Процесс '$1' не запущен"
fi
