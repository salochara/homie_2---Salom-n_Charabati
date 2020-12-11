# README

Prueba Técnica #2 Homie 

## Instrucciones
API  
Crear el modelo User, y su controlador.  
Donde el endpoint GET /users/:id/welcome en formato json
retorne el primer registro de la bd  
Hacerle pruebas Rspec al controlador y modelo.  
Subir el código en GitHub y compartir el link del repositorio.


### Notas
Generé la aplicación con `rails new homie_api --api -T` creando una aplicación API y sin el directorio de /tests que viene por default.
  
Con esto, hice una API simple, en donde el endpoint `GET /users/:id/welcome` retorna el primer registro de la BD.
Solamente creé ese endpoint con dicha funcionalidad.
 
#### Para las pruebas `Rspec al modelo User`: 
  
- Hice validaciones de los atributos validando su presencia. Con esto, se asegura de que se pueda crear un nuevo usuario con lo que es requerido. 

#### Para las pruebas `Rspec al endpoint GET /users/:id/welcome`, hice Rspec de tipo `request`: 

- Con esto, hice una prueba al endpoint para confirmar si responde con el código `http 200`.
- La otra prueba fue para verificar que efectivamente, regrese el primer registro de la BD. Para lograr esto, guardé en la BD 3 registros con distintos valores y comparo la respuesta con el primer regsitro guardado.



Con esto, se logra el objetivo de consultar el endpoint y que regrese el primer registro de la BD. Únicamente un método en el  `UsersController` fue necesario para lograrlo. 
