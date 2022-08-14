/* 
   NOTA:
   Este archivo es únicamente descriptivo.
   Estos comandos mostrados a continuación se realizaron desde la terminal.

   ** IMPORTANTE **
   Se tuvo que cambiar valores por defecto de MySQL mediante las siguientes instrucciones.

   * En la terminarl de MySQL *
   - SHOW GLOBAL variables LIKE 'local_infile'
   - SET GLOBAL local_infile = 'ON'
   - ShOW GLOBAL VARIABLES LIKE 'local_infile'

   * En "C:\Program Files\MySQL\MySQL Server 8.0\" *
   - Crear el archivo "my.ini", (probablemente necesites la terminal de windows con permisos
   de administrador).
   - Escribir dentro del archivo "my.ini":
       - [client]
       - loose-local-infile = 1
       -
       - [mysqld]
       - secure-file-priv = ""
    
    Finalmente, cerrar la terminal de windows y la terminal de MySQL si la dejaste abierta.
    Es posible que necesites reiniciar el servicio de MySQL (Si no sabes cómo hacerlo, reinicia tu oredenador).
    Ahora el comando para la importación del archivo ".csv" funcionará sin problemas.

    No olvidar colocar el archivo ".csv" en la carpeta Uploads de MySQL para que pueda encontrarla.
    Ese necesario que se ubique allí para evitar posibles conflictos con el nombre de la ruta.
    Si no existe la carpeta Uploads, crearla. Es obligación que se llame "Uploads".
*/

-- Instrucciones utilizadas para la creación y utlización de la Base de Datos.
CREATE DATABASE Stores;

USE Stores;

CREATE TABLE Tiendas(
    id INT AUTO_INCREMENT,
    area INT,
    stock INT,
    monthlycustomer INT,
    ventas INT,
    PRIMARY KEY (id)
);

DESCRIBE Tiendas; -- Muestra el formato de construcción de la tabla.

-- Importación de los datos .csv
LOAD DATA LOCAL INFILE "C:/Program Files/MySQL/MySQL Server 8.0/Uploads/Stores.csv" INTO TABLE Tiendas
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
-- Importación terminada.

-- Verificamos:
SELECT * FROM Tiendas;