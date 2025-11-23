CREATE TABLE currentlyParked (
    spotNumber INT NOT NULL UNIQUE,
    plateNumber VARCHAR(50) NOT NULL UNIQUE,
    vehicleType VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    timeIn time(0),
    dateIn date
);

CREATE TABLE parkingHistory (
    plateNumber VARCHAR(50) NOT NULL UNIQUE,
    vehicleType VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    amountPayed INT,
    [duration(HH/MM/SS)] VARCHAR(20), 
    timeIn time(0),
    timeOut time(0),
    [duration(Days)] INT,
    dateIn date,
    dateOut date
);

CREATE TABLE prices(
    motorcycleFixrate DECIMAL(10,2),
    motorcycleHourlyrate DECIMAL(10,2),
    carFixrate DECIMAL(10,2),
    carHourlyrate DECIMAL(10,2)
);

SELECT * FROM currentlyParked
SELECT * FROM parkingHistory
SELECT * FROM prices

DROP TABLE currentlyParked
DROP TABLE parkingHistory
DROP TABLE prices




--TEST VALUES--
INSERT INTO currentlyParked (spotNumber,plateNumber,vehicleType,color,timeIn,dateIn) VALUES ('', '','','','24:00:00','2025-11-05')

--DEFAULT PRICE--
INSERT INTO prices (motorcycleFixrate,motorcycleHourlyrate,carFixrate,carHourlyrate) VALUES (20,10,40,20)

USE iparkMotoDB;

