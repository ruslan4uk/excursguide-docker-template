# excursguide-docker-template

##### Состав:
##### - proxy (Nginx-proxy) - проксирует весь трафик 
##### - backend (Php + Nginx) - backend server 
##### - frontend (Nodejs) - frontend server
##### - services (mysql + redis + laravel echo server)
##
##### В каждой папке есть файл .env с настройками домена
##
##### !!! Запускать сначала прокси потом остальные контейнеры !!!