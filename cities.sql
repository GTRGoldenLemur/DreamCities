--1.Create database cities: Command line

sqlite3 cities.db;

--2.Create table monthly5
CREATE TABLE monthly5
 (
  city TEXT,
  YEAR INTEGER,
  MO INTEGER,
  T2M REAL,
  ALLSKY_SFC_SW_DWN REAL,
  PRECTOTCORR REAL,
  WS2M REAL,
  RH2M REAL,
  LAT REAL, 
  LON REAL, 
  population INTEGER);

--3.Import CSVs files with DBeaver (16 files)

--4.Update population all cities
UPDATE monthly5
SET population = CASE city
  WHEN 'Berlin'       THEN 3850000
  WHEN 'Buenos Aires' THEN 3120000
  WHEN 'Cairo'        THEN 10100000
  WHEN 'Lagos'        THEN 15000000
  WHEN 'London'       THEN 8900000
  WHEN 'Mexico City'  THEN 9200000
  WHEN 'Mumbai'       THEN 12500000
  WHEN 'Nairobi'      THEN 4400000
  WHEN 'New York'     THEN 8500000
  WHEN 'Paris'        THEN 2160000
  WHEN 'São Paulo'    THEN 12300000
  WHEN 'Seville'      THEN 690000
  WHEN 'Singapore'    THEN 5900000
  WHEN 'Sydney'       THEN 5300000
  WHEN 'Tokyo'        THEN 9700000
  WHEN 'Valencia'     THEN 790000
  ELSE population
END
WHERE population IS NULL OR population = 0;


