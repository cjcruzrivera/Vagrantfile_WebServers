#!/usr/bin/env bash
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing
sudo apt-get update
sudo apt-get -y install apache2 --fix-missing

sudo echo "<html>
<body>
<h1>WEB 1<h1>
hola
</body>
</html>
" > /var/www/html/index.html