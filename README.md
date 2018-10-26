# Script para elegir el  lenguaje que mas te guste.

Nuestro script tiene la siguiente funcionalidad:
+ Gracias al curso de ASIR, hemos aprendido varios sistemas operativos e incluso ejecutado alguno de ellos.
+ En el, tendremos que elegir el lenguaje que más nos guste, lo hayamos dado o no.

Lo que vamos a necesitar para nuestra ejecución:
  - Servidor Apache2
  - Activar CGI-BIN en apache (#a2enmod cgi)
  - Transferir nuestro .pl a la ruta /usr/lib/cgi-bin/
 
# Para su ejecución debemos hacerlo de las siguientes maneras:

+ localhost/cgi-bin/lenguaje.pl 
    * Ejecutariamos nuestro perl en el cual nos saldra la lista de lenguajes que tenemos almacenados en el fichero lenguajes.txt
+ localhost/cgi-bin/lenguaje.pl?nombre=JavaScript
    * La opción elegida por el usuario sera JavaScript

