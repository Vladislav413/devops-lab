#!/bin/bash

LOG_FILE="process_report.log"

echo "=== Отчет по процессам за $(date) ===" >> "$LOG_FILE"

echo "--- Топ-5 процессов по CPU ---" >> "$LOG_FILE"
ps aux --sort=-%cpu | head -n 6 >> "$LOG_FILE"

echo "--- Топ-5 процессов по RAM ---" >> "$LOG_FILE"
ps aux --sort=-%mem | head -n 6 >> "$LOG_FILE"

echo "" >> "$LOG_FILE"
