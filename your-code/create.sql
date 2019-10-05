CREATE DATABASE lab_produccion_agricola;
USE lab_produccion_agricola;
CREATE TABLE IF NOT EXISTS Produccion
(cultivo_id INT NOT NULL,
cultivo_nombre VARCHAR(30) NOT NULL,
anio VARCHAR(4) NOT NULL,
produccion DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Superficie
(cultivo_id INT NOT NULL,
anio VARCHAR(4) NOT NULL,
superficie_sembrada DECIMAL(10,2)
);
CREATE TABLE IF NOT EXISTS Rendimiento
(cultivo_id INT NOT NULL,
anio VARCHAR(4) NOT NULL,
rendimiento DECIMAL(3,2)
);