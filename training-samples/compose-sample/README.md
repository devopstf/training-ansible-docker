# Tarea: escribir un fichero para docker-compose

> Objetivo: Crear un script para levantar una instalación en local del CMS Drupal

- Editaremos el fichero docker-compose.yml que hay en la carpeta. 
- Usaremos las imágenes oficiales de `drupal` y `postgres` de _Docker Hub_.
- Usaremos la versión `2`de la sintaxis de YAML.
- Drupal escuchará en el puerto 8080.
- Debemos asegurarnos de que asignamos una contraseña para acceder a la BB.DD., usando la variable de entorno `POSTGRES_PASSWORD` en la imagen de `postgres`.
- Realizaremos la configuración del Drupal utilizando el _Wizard_ vía navegador, en la dirección http://localhost:8080
- Drupal considera que la BB.DD. está en local, i.e. `localhost`, pero en vuestro caso su nombre será el del servicio que pongáis en el _script_.
- Leer y escribir son habilidades muy poco valoradas: repasad la documentación de la imagen oficial de Drupal en _Docker Hub_ para ver qué volúmenes necesitan persistencia y qué variables de entorno necesitamos.