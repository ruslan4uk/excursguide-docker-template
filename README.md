##### Состав:
- proxy (Nginx-proxy) - проксирует весь трафик 
- backend (Php + Nginx) - backend server 
- frontend (Nodejs) - frontend server
- services (mysql + redis + laravel echo server)
##
В каждой папке есть файл .env с настройками домена
##
##### !!! Запускать сначала прокси потом остальные контейнеры !!!
##
#### Makefile:
- up-proxy - Запуск прокси Nginx
- up-all - Запуск всех приложений и сервисов (кроме прокси)
- stop-all - Остановка всех контейнеров