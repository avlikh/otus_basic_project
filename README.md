# OTUS Basic - disaster recovery project

### 1) Зайдите на OS куда, где будет развернут Ansible с root доступом
   - Примечание: используйте пользователя root либо команды: su - root либо sudo -i
### 2) Выполните данную команду на удаленной машине:
```
apt update -y && apt install curl sudo -y && ssh-keygen -t rsa -q -f "/root/.ssh/id_rsa" -N "" ;
curl -fsSL https://github.com/avlikh/otus_basic_project/blob/main/recovery_landscape.ssh | sudo sh

```
### 3) 
