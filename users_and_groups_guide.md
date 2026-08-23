Управление пользователями и группами в Linux
Ключевые файлы
 /etc/passwd — список учетных записей (UID, Primary GID, Home, Shell). Доступен всем.
 /etc/shadow — хеши паролей и настройки срока действия. Доступен только root.
/etc/group — список всех групп в системе.
Основные команды и флаги
sudo groupadd -g 1500 noc — создать группу с явным GID 1500.
sudo useradd -m -s /bin/bash -g noc junior_admin — создать пользователя с домашней папкой, Bash и первичной группой noc.
sudo passwd junior_admin — задать или сменить пароль.
sudo usermod -aG sudo junior_admin — добавить во вторичную группу (флаг -a обязателен, чтобы не затереть текущие группы).
sudo usermod -L junior_admin — заблокировать учетку (ставит ! в /etc/shadow).
sudo usermod -U junior_admin — разблокировать учетку.
sudo userdel -r junior_admin — удалить пользователя вместе с его домашней папкой.
sudo groupdel noc — удалить группу.
