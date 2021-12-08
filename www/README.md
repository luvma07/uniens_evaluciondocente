# Aplicación de evaluación Docente UNIENS

## Descripción:
Ejecuta una aplicación web para realizar una encuesta de evaluación
docente. Está basada en PHP, HTML y CSS.
No requiere realizar la ejecución de un script adicional.
Usa en backend una DB MySQL (ver. mysqlnd 5.0.12-dev 20150407), donde se ubican los
usuarios, contraseñas, docentes, preguntas, etc y guarda las respuestas
de cada estudiante. 

El archivo de configuración para setear las variables 
se llama **login_user.controller.php**, mientras que
el archivo para la conexión a la base de datos se llama
**connection.php**.

Otros specs:
* Versión JSON 1.7.0
* Versión PHP 7.3.29