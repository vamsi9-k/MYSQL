-- creating Database.
create database ProductDB;
use ProductDB;
-- creating Table.
create table  Products(
					ProductID tinyint unique not null,
					ProductName varchar(255) not null ,
					Category varchar(255) not null,
					Price decimal not null,
					StockQuantity smallint not null, 
					ManufactureDate date,
					ExpiryDate date,
					SupplierName varchar(255) default "Unknown");

-- Modifying the Table.


alter table  Products add column `Description_` varchar(255) default "-";
alter table  Products modify Category char(255);
alter table Products drop ExpiryDate;
 alter table Products add constraint unique(ProductName);
 alter table Products drop constraint ProductName;
alter table Products change price ProductPrice decimal;
select * from Products;
describe Products;


