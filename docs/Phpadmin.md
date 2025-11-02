# Actualizaciones del servidor
Con los comando update y upgrade. Después es necesario reiniciar.
![](./img/1.png)

# Instalación de PHPAdmin
Podemos conectarnos vía ssh desde un cliente.
![](./img/2.png)

Con el siguiente comando.
![](./img/3.png)

### Para que sirven los apartado extras.
php-mbstring: Un módulo para gestionar cadenas no ASCII y convertir cadenas a diferentes codificaciones.
* php-zip: Esta extensión soporta la carga de ficheros .zip a phpMyAdmin.
* php-gd: Habilita el apoyo para la Biblioteca Gráfica GD.
* php-json: Proporciona a PHP apoyo para la serialización JSON.
* php-curl: Permite que PHP interactúo con diferentes tipos de servidores usando diferentes protocolos.

Después es necesario seleccionar apache2, aunque tengamos instalado Nginx.
![](./img/4.png)

Ahora aceptaremos para que dbconfig-common pueda configurar la base de datos.
![](./img/5.png)

Escribimos la contraseña para phpmyadmin.
![](./img/6.png)

Para aplicar los cambios es necesario reiniciar el servidor.

![](./img/7.png)

Ahora crearemos en /etc/nginx/sites-availables, un fichero de configuración de nginx.
![](./img/8.png)

Editamos el fichero de la siguiente manera.
![](./img/9.png)

Hacemos el enlace simbólico con /etc/nginx/sites-enabled.
![](./img/10.png)

Comprobamos si hay algún fallo.

![](./img/11.png)

Reiniciamos y vemos el status de nginx.
![](./img/12.png)

Es necesario modificar el fichero hosts.

![](./img/13.png)

En un navegador podemos poner la url de la siguiente manera. 
![](./img/14.png)

El usuario es root y contraseña de MariaDB.
![](./img/15.png)

## Acceso por Contraseña del root de MariaDB
Entramos como root, a MariaDB, la contraseña es la que se puso durante la instalación.

![](./img/16.png)

Si averiguamos la versión de MariaDB, en mi caso la 10.11.

![](./img/17.png)

Y luego introducimos el siguiente select, veremos que ya esta mysql_native_password.
![](./img/18.png)

## Usuario dedicado de MariaDB
Crearemos el usuario dedicado dentro de MariaDB.
![](./img/19.png)

Podemos comprobar si entramos en PHPMyAdmin.
![](./img/20.png)

## Protección de PhpMyAdmin
Instalaremos apache-utils, aunque se use Nginx 

![](./img/21.png)

Ahora podemos usar htpasswd, para almacenar las credenciales de los usuarios en un fichero.
![](./img/22.png)

Para añadir mas usuarios sin sobrescribir el fichero se quita la -c del comando.



Ahora es necesario añadir un apartado al archivo que creamos antes para Nginx.
![](./img/23.png)

Comprobamos fallos.

![](./img/24.png)

Recargamos el servicio.

![](./img/25.png)

Para proteger el fichero htpass, podemos cambiar de propietario con el grupo www-data.
![](./img/26.png)

Y también podemos cambiar los permisos para que el propietario pueda leer y escribir, el grupo leer y los otros sin permisos.

![](./img/27.png)

## Scripts
Instalación de programas para LEMP.
![](./img/28.png)

Instalación de PHPMyAdmin y htpsswd.
![](./img/29.png)

