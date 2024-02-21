--Crear la base de datos
create database Proyect23
---usar la base de datos ya creada.
use Proyect23

-- Creaci�n de la tabla para categor�as
CREATE TABLE Categorias (
    idCategoria INT PRIMARY KEY,
    nombreCategoria VARCHAR(100) NOT NULL
);

-- Creaci�n de la tabla para productos
CREATE TABLE Productos(
    idProducto INT PRIMARY KEY,
    nombreProducto VARCHAR(255) NOT NULL,
	precio decimal(10,2) Not Null,
	descripcion varchar(Max),
	imagen image,
    idCategoria INT,
	FOREIGN KEY (idCategoria) REFERENCES Categorias(idCategoria)
);
