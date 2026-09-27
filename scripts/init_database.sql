/*
CREATE DATABASE AND SCHEMAS 

Script Purpose:
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  if the database exists , it is dropped and recreated . Additionally , the script sets up three schemas within the database : 'bronze','silver','gold'

Warning :
  Running this script will drop the entire 'DataWarehouse' database if it exists 
  All data in the database will be permanently deleted proceed with caution and ensure you have proper backups before running this script 

*/



-- create database 'DataWarehouse'

USE master;
GO 
IF EXISTS (SELECT 1 FROM sys.datanasses WHERE name='DataWarehouse')
BEGIN 
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWareHouse;
END;
GO 

  
CREATE DATABASE DataWareHouse;

USE DataWareHouse; 

-- create schemas of different layers 
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO 
