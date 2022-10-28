#DROP DATABASE taxiApp;
CREATE database taxiApp;
USE taxiApp;

CREATE TABLE Propietarios (
	id_propietario INT AUTO_INCREMENT,
	nombre_propietario VARCHAR(250) NOT NULL,
	telefono_propietario VARCHAR(15),
	PRIMARY KEY(id_propietario)
);

CREATE TABLE Taxis (
	id_taxi INT AUTO_INCREMENT,
	Placa_vehiculo CHAR(7) UNIQUE,
	Marca_vehiculo VARCHAR(50) NOT NULL,
	Modelo_vehiculo VARCHAR(50) NOT NULL,
    fk_id_propietario INT,
	PRIMARY KEY(Placa_vehiculo),
    FOREIGN KEY(fk_id_propietario) REFERENCES Propietarios(id_propietario) ON DELETE SET NULL
);

CREATE TABLE Conductores (
	id_conductor INT AUTO_INCREMENT,
	nombre_conductor VARCHAR(250) NOT NULL,
	telefono_conductor VARCHAR(15),
    fk_Placa_vehiculo CHAR(7) UNIQUE,
	PRIMARY KEY(id_conductor),
    FOREIGN KEY(fk_Placa_vehiculo) 
    REFERENCES Taxis(Placa_vehiculo) 
    ON DELETE SET NULL
    ON UPDATE CASCADE
);


 INSERT INTO taxis VALUES(null,"7645BBG", "Seat", "ibiza 1.4", null);
 INSERT INTO taxis VALUES(null,"7645BCG", "Seat", "leon 1.4", null);
 INSERT INTO taxis VALUES(null,"7645BBC", "Seat", "toledo 1.4", null);
 
 
 INSERT INTO conductores VALUES(null, "María Sánchez Ron", "+349876987", null);
 INSERT INTO conductores VALUES(null, "Miguel Sáncho Ron", "+349876988", null);
 INSERT INTO conductores VALUES(null, "Delia Sanz Ron", "+349876989", null);
 
 
 INSERT INTO Propietarios VALUES(null, "Isa Ron Sánchez", "+349876977");
 INSERT INTO Propietarios VALUES(null, "Esther Ron Sáncho", "+349876978");
 INSERT INTO Propietarios VALUES(null, "MAnuel Ron Sanz", "+349876979");
 
 
 UPDATE Propietarios 
 SET telefono_propietario = "+349676978"
 WHERE id_propietario = 1;
 