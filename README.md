# OTUS Basic - disaster recovery project

### 1) Зайдите на OS, где будет развернут Ansible с root доступом
   - Примечание: используйте пользователя **root** либо команды: **su - root** либо **sudo -i**
### 2) Выполните данную команду на удаленной машине:
```
apt update -y && apt install git -y ; git clone https://github.com/avlikh/otus_basic_project.git /ansible;
ssh-keygen -t rsa -q -f "/root/.ssh/id_rsa" -N "" ; /ansible/recovery_landscape.ssh
```
### 3) Далее потребуется ввести несколько раз пароль для установки rsa.pub ключей на хостовые машины
### 4) Выпейте чашку кофе или чая - Ansible будет разварачивать ланшавт около 15-20 минут
### 5) Выполните настройку источников данных и дашбордов Grafana: http://10.68.7.16:3000/login
### 6) Зайдите на Nginx и нагенерируйте запросов для Elastic: http://10.68.7.11/
### 7) Добавьте источник данных и визуализацию в Elastic: http://10.68.7.17:5601

### Для сокращения времени защиты проекта, выполните данную команду на заранее подготовленном ланшавте:
```
apt update -y && apt install git -y ; git clone https://github.com/avlikh/otus_basic_project.git /ansible;
/ansible/recovery_landscape_demo.ssh
```
   - Примечание: Заранее установить ssh-ключи, установить базовые пакеты, установить MySQL, Мониторинг и ELK стек без конфигов, очистить папку /www
