# Домашнее задание к занятию 1 «Введение в Ansible»

## Основная часть

> Попробуйте запустить playbook на окружении из `test.yml`, зафиксируйте значение, которое имеет факт `some_fact` для указанного хоста при выполнении playbook.

<img src="img/fact_12.png" width="200px" height="auto">

> Найдите файл с переменными (group_vars), в котором задаётся найденное в первом пункте значение, и поменяйте его на `all default fact`.

<img src="img/all_facts.png" width="200px" height="auto">

> Воспользуйтесь подготовленным (используется `docker`) или создайте собственное окружение для проведения дальнейших испытаний.
```
docker run -dit --name ubuntu ubuntu
docker run -dit --name centos7 centos
```
>Проведите запуск playbook на окружении из `prod.yml`. Зафиксируйте полученные значения `some_fact` для каждого из `managed host`.

<img src="img/docker.png" width="800px" height="auto">

> Добавьте факты в `group_vars` каждой из групп хостов так, чтобы для `some_fact` получились значения: для `deb` — `deb default fact`, для `el` — `el default fact`.

<img src="img/docker_facts.png" width="800px" height="auto">

>Повторите запуск playbook на окружении `prod.yml`. Убедитесь, что выдаются корректные значения для всех хостов.

<img src="img/docker_facts2.png" width="800px" height="auto">

> При помощи `ansible-vault` зашифруйте факты в `group_vars/deb` и `group_vars/el` с паролем `netology`.
```
ansible-vault encrypt group_vars/deb/examp.yml 
ansible-vault encrypt group_vars/el/examp.yml 
```

> Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь в работоспособности.
```
ansible-playbook -i inventory/prod.yml site.yml --ask-vault-pass
```

> В `prod.yml` добавьте новую группу хостов с именем  `local`, в ней разместите localhost с необходимым типом подключения.
Запустите playbook на окружении `prod.yml`. При запуске `ansible` должен запросить у вас пароль. Убедитесь, что факты `some_fact` для каждого из хостов определены из верных `group_vars`.

<img src="img/localhost.png" width="200px" height="auto">

---
