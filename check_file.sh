#!/bin/bash
if [ -f "$1" ]; then 
    echo "Файл $1 найден!"
    cat "$1"
else
    echo "Ошибка: файл $1 не существует!"
fi
