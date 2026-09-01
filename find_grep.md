## find (Поиск файлов)
- `find /var/log -iname "*.log"` — Поиск файлов по имени (без учета регистра)
- `find /var/log -type f -size +100M` — Поиск файлов больше 100MB

## grep (Поиск текста)
- `grep -r -i -n "error" /var/log/` — Поиск слова "error" рекурсивно с номерами строк
- `grep -v "info" app.log` — Исключить строки со словом "info"
- `grep "fail" app.log | head -n 10` — Показать первые 10 совпадений
