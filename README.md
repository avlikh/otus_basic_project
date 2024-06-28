# OTUS Basic - disaster recovery project

### 1) Зайдите на OS куда, где будет развернут Ansible с root доступом
   - Примечание: используйте пользователя root либо команды: su - root либо sudo -i
### 2) Выполните данную команду на удаленной машине:
```
apt update -y && apt install git -y ; git clone git@github.com:avlikh/otus_basic_project.git /ansible;
ssh-keygen -t rsa -q -f "/root/.ssh/id_rsa" -N "" && /ansible/recovery_landscape.ssh
```
### 3) 
