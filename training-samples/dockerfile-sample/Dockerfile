# Usaremos este fichero vacío para construir nuestro Dockerfile

# En la carpeta tenemos una aplicación Node.js que queremos ejecutar en un contenedor
# No vamos a tocar la aplicación por mucho que nos apetezca ;)

# Resumen:
# Usaremos las instrucciones que nos han pasado los desarrolladores
# Lo suyo es ir metiendo líneas aquí mismo, siguiendo las indicaciones
# Si funciona todo como debe, lo veremos en http://localhost
# Etiquetad la imagen para subirla a vuestra cuenta de Docker Hub
# Subidla y mirad en https://hub.docker.com
# Eliminad la imagen de la caché local.
# Levantad un contenedor con vuestra imagen de Docker Hub y comprobad que la descarga y levanta bien.
# Comprobad de nuevo que todo funciona en http://localhost


# Indicaciones del equipo de desarrollo
# - deberíamos utilizar la imagen oficial de 'node', con la etiqueta alpine 6.x
# - La aplicación escucha en el puerto 3000, pero el contenedor debería publicar el servicio en el puerto 80
#   de manera que responda en http://localhost:80
# - luego instalaremos tini con el gestor de paquetes de Alpine: 'apk add --update tini'
# - meteremos los ficheros de la aplicación en un directorio /usr/src/app que debemos crear 'mkdir -p /usr/src/app'
# - Node utiliza un gestor de paquetes, así que tenemos que copiar el fichero package.json
# - luego usaremos 'npm install' para instalar las dependencias de ese fichero
# - procuramos dejarlo todo limpio después de instalar, con 'npm cache clean --force'
# - luego hay que copiar todos los ficheros de la carpeta
# - el contenedor arrancará con la orden 'tini -- node ./bin/www'

# Este ejercicio ha sido tomado del curso _Udemy_ [_Docker Mastery_](https://www.udemy.com/docker-mastery/learn/v4/content)
# elaborado por [Brent Fisher](https://www.bretfisher.com/)