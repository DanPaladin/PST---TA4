/* 
   NOTA:
   Este archivo es únicamente descriptivo.
   Estos comandos mostrados a continuación se realizaron desde la terminal.
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
/* LOAD DATA LOCAL INFILE "C:/Program Files/MySQL/MySQL Server 8.0/Uploads/Stores.csv" INTO TABLE Tiendas
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;*/
LOAD DATA LOCAL INFILE "C:/Program Files/MySQL/MySQL Server 8.0/Uploads/Stores.csv" INTO TABLE Tiendas
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\n' IGNORE 1 ROWS;
-- Importación terminada.

-- Verificamos:
SELECT * FROM Tiendas;