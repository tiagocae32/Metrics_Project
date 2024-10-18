Pasos para usar el proyecto.

Comandos

# composer install

# npm install

Crear manualmente la base de datos en por ejemplo mysql. La base debera llamarse igual al valor que tiene la variable DB_DATABASE en el .env.
Tambien se deberan cambiar(llegado el caso) otras variables en el .env relacionados a la db como DB_DATABASE,DB_USERNAME,DB_PASSWORD.

# php artisan migrate

# php artisan db:seed --class=CategorySeeder

# php artisan db:seed --class=StrategySeeder

# npm run dev

# php artisan serve

Una vez llegado a este paso, ya podras entrar a http://127.0.0.1:8000/ y usar la aplicacion.

Como extra cree dos tests para probar la creacion de una metrica(uno de creacion exitosa y otro en el cual rompe)
Para correr los test se corre el comando php artisan test.
La configuracion de los tests se encuentra en el archivo phpunit.xml(hacer las modificaciones necesarias en las variables relacionadas a la conexion a la bbdd)

# Dump BBDD

Agregue tambien un dump de la base de datos. El mismo se encuentra en el root del proyecto(metrics_project.sql)

-   Por las dudas verificar la version de node js con la que se este trabajando. Yo estoy con la version 18.20.4.
    Esto por temas de compatibilidad con por ejemplo el uso de imports modules en vez de require.
