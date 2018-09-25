#!/usr/bin/env bash
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing

sudo echo " <!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8' />
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>WEB 2</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
</head>
<body>
    <h1>HOLA DESDE LA WEB 2</h1>
</body>
</html>" > /var/www/html/index.html