# rom-prueba-mulesoft-sys-api
Prueba práctica de Mulesoft

El Api se desarrolló en Anypoint Studio Version: 7.18.1 con java 8 

Crea y consulta usuarios a una base de datos SQLITE con la siguiente estructura:

create table user(
id integer primary key,
username text not null,
email text not null,
name text not null,
lastname text not null,
password char(50) not null);

La base de datos se encuentra en la ruta main/resource/UsersDB.db

Para poder conectarse a la base de datos se necesita la libreria sqlite-jdbc la cual se obtiene con Maven

El Api tambien hace una petición a otra Api externa a https://jsonplaceholder.typicode.com/

Los parámetros de configuración y mensajes están definidos en los archivo app.yaml y commons.yaml en la ruta main/resource/properties

Para indicar el entorno en el que se va a ejecutar el Api, se debe usar la variable mule.env definida en Run configurations

mule.env = local para pruebas locales y mule.env = dev para las pruebas en cloudhub 

El postman collection junto con las variables de entorno para probar el APi se encuentran en el repositorio:

https://github.com/romelmain/rom-prueba-mulesoft-sys-raml
