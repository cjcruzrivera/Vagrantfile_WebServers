# Vagrantfile_WebServers
Archivos necesarios para levantar dos servidores web virtuales mediante Vagrant


Consta de un archivo Vagrantfile el cual tiene la definición de dos máquinas virtuales, web_1 y web_2. Ambas máquinas tendrán instalado el servidor apache2 pero:
* web_1 escuchará por el puerto 8080
* web_2 escuchará por el puerto 8008
* web_1 tendrá sus archivos web disponibles en el directorio www_1  en el host y dentro de este directorio tendrá un archivo HTML como el que vimos anteriormente en este documento
* web_2 tendrá sus archivos web disponibles en el directorio www_2  en el host y dentro de este directorio tendrá un archivo HTML que desplegará la palabra “hello”


# Instalación
~~~
 git clone https://github.com/cjcruzrivera/Vagrantfile_WebServers.git
 
 cd Vagrantfile_WebServers

 vagrant up

~~~

# Probar el correcto funcionamiento 
~~~
# Para Web 1
lynx --dump localhost:8080

# Para Web 2
lynx --dump localhost:8008

~~~
