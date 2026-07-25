#!/bin/bash
if [ -z "$1" ]; then
    echo "Нужно добавить первый аргумент"
    exit 1
fi
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")
if pgrep "$1" > /dev/null; then
    echo "[$TIMESTAMP] [OK] Процесс '$1' работает" >> heal.log
    echo "[$TIMESTAMP] [OK] Процесс '$1' работает"
else
    echo "Процесс упал. Попытка перезапуска..." >> heal.log
    service "$1" start > /dev/null
    sleep 2
    if pgrep "$1" > /dev/null; then
        echo "[$TIMESTAMP] [FIXED] Процесс '$1' успешно восстановлен!" >> heal.log
        echo "[$TIMESTAMP] [FIXED] Процесс '$1' успешно восстановлен!"
    else
        echo "[$TIMESTAMP] [CRITICAL] Не удалось восстановить '$1'!" >> heal.log
        echo "[$TIMESTAMP] [CRITICAL] Не удалось восстановить '$1'!"   
    fi
fi
