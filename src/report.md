## Part 1. Готовый докер

- Взять официальный докер образ с **nginx** и выкачать его при помощи `docker pull`
![simple_docker](images/1.1.png)

- Проверить наличие докер образа через `docker images`
![simple_docker](images/1.2.png)

- Запустить докер образ через `docker run -d [image_id|repository]`
![simple_docker](images/1.3.png)

- Проверить, что образ запустился через `docker ps`
![simple_docker](images/1.4.png)

- Посмотреть информацию о контейнере через `docker inspect [container_id|container_name]`
![simple_docker](images/1.8.png)

- По выводу команды определить и поместить в отчёт размер контейнера, список замапленных портов и ip контейнера
  ![simple_docker](images/1.5.png)
  <br>
  <i>ip контейнера</i>

  ![simple_docker](images/1.6.png)
  <br>
  <i>размер контейнера</i>

  ![simple_docker](images/1.7.png)
  <br>
  <i>список замапленных портов</i>

- Остановить докер образ через `docker stop [container_id|container_name]`
![simple_docker](images/1.9.png)

- Проверить, что образ остановился через `docker ps`
![simple_docker](images/1.10.png)

- Запустить докер с портами 80 и 443 в контейнере, замапленными на такие же порты на локальной машине, через команду *run*
![simple_docker](images/1.11.png)

- Проверить, что в браузере по адресу *localhost:80* доступна стартовая страница **nginx**
![simple_docker](images/1.12.png)

- Перезапустить докер контейнер через `docker restart [container_id|container_name]`
![simple_docker](images/1.13.png)

- Проверить любым способом, что контейнер запустился
![simple_docker](images/1.14.png)


## Part 2. Операции с контейнером

Докер образ и контейнер готовы. Теперь можно покопаться в конфигурации **nginx** и отобразить статус страницы.

- Прочитать конфигурационный файл *nginx.conf* внутри докер контейнера через команду *exec*
![simple_docker](images/2.1.png)

- Создать на локальной машине файл *nginx.conf*
- Настроить в нем по пути */status* отдачу страницы статуса сервера **nginx**
![simple_docker](images/2.3.png)

- Скопировать созданный файл *nginx.conf* внутрь докер образа через команду `docker cp`
- Перезапустить **nginx** внутри докер образа через команду *exec*
![simple_docker](images/2.2.png)

- Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![simple_docker](images/2.4.png)

- Экспортировать контейнер в файл *container.tar* через команду *export*
![simple_docker](images/2.5.png)

- Остановить контейнер

![simple_docker](images/2.6.png)

- Удалить образ через `docker rmi [image_id|repository]`, не удаляя перед этим контейнеры
![simple_docker](images/2.7.png)

- Удалить остановленный контейнер

![simple_docker](images/2.8.png)

- Импортировать контейнер обратно через команду *import*
![simple_docker](images/2.12.png)

- Запустить импортированный контейнер
![simple_docker](images/2.9.png)

- Проверить, что по адресу *localhost:80/status* отдается страничка со статусом сервера **nginx**
![simple_docker](images/2.10.png)

## Part 3. Мини веб-сервер

- Настало время немного оторваться от докера, чтобы подготовиться к последнему этапу. Настало время написать свой сервер.
- Выполняем команды по очереди из comands.thx
![simple_docker](images/3.0.png)


## Part 4. Свой докер

- Теперь всё готово. Можно приступать к написанию докер образа для созданного сервера.

- запуск bash sever.sh
![simple_docker](images/4.png)


- переход по localhost:80

![simple_docker](images/4.2.png)

- переход по localhost:80/status

![simple_docker](images/4.3.png)

## Part 5. **Dockle**

- После написания образа никогда не будет лишним проверить его на безопасность.

- Выполняем команду и видим ошибки
![simple_docker](images/5.png)

- Проверяем после правок
![simple_docker](images/5.1.png)

## Part 6. Базовый **Docker Compose**

- Вот вы и закончили вашу разминку. А хотя погодите...
- Почему бы не поэкспериментировать с развёртыванием проекта, состоящего сразу из нескольких докер образов?

![simple_docker](images/6.2.png)









