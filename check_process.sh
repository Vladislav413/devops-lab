#!/bin/bash
if pgrep cron > /dev/null; then
    echo "[OK] Служба cron запущена"
else
    echo "[Warn] Служба cron Не запущена!"
fi
