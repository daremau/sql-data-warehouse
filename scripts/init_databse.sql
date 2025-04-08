/*
Create DB and Schemas

Script purpose: The scripts creates a DB called 'DataWarehouse', after checking if it already exist.
Then it set ups three schemas within the DB: bronze, silver and gold.

WARNING: Running the script will permanently delete all the data of 'DataWarehouse' database if it already exists.
*/

USE master;
GO

-- Drop and recreate DB
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create DB
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;