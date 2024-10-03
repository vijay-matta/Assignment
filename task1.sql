 create database CourierManagementSystem
 use CourierManagementSystem
 
 
 create table Users( UserId numeric(6) primary key,
  Name varchar(255),
  Email varchar(255) UNIQUE,
  Password Varchar(255),
  ContactNo varchar(255),
  Address text)

  create table Employee(
	  EmployeeID int primary key,
	  Name varchar(255),
	  Email varchar(255) Unique,
	  ContactNumber varchar(20),
	  Role varchar(50),
	  Salary decimal (10,2) )

  create table Courier
  ( CourierID int primary key,
    SenderName varchar (255),
	SenderAddress text,
	ReceiverName varchar(255),
	ReceiverAddress text,
	Weight decimal (5,2),
	Status varchar(255),
	TrackingNumber varchar(20) Unique,
	DeliveryDate date,
	EmployeeId int FOREIGN KEY  REFERENCES Employee(EmployeeID))
	
	
	select * from Users
	
	select * from Courier
	alter table Courier 
	delete from Courier where CourierID <22
	SET FOREIGN_KEY_CHECKS = 0
	drop column EmployeeID 
	add UserId numeric(6) FOREIGN KEY REFERENCES Users(UserId)

	
	
	
	
	create table CourierServices(
	    ServiceID int primary key,
		ServiceName varchar(100),
		Cost decimal (8,2))

       create table Location(
	     LocationID int primary key,
		 LocationName varchar(100),
		 Address text)

drop table Payment

       create table Payment(
          PaymentID int primary key,
          Amount decimal (10,2),
          PaymentDate date,
          CourierID int FOREIGN KEY  REFERENCES  Courier(CourierID),
          LocationID int FOREIGN KEY  REFERENCES Location(LocationID),
          )

       create table Packages (
          PackageId int primary key,
          PackageName varchar(255),
          CourierId int FOREIGN KEY REFERENCES Courier(CourierId))


       create table courierservicesmapping (
        courierid int,
        serviceid int,
        foreign key (courierid) references courier(courierid),
        foreign key (serviceid) references courierservices(serviceid),
        primary key (courierid, serviceid))