use mand2;

/*
create table if not exists Product(
ProductID int not null auto_increment primary key,
Name varchar(100) not null,
Price int not null,
Stock int not null,
RecorderLevel varchar(100)
);

create table if not exists Corporation(
CorporationID int not null auto_increment primary key,
CorporationName varchar(100) not null
);

create table if not exists Customer(
CustomerID int not null auto_increment primary key,
First_name varchar(100) not null,
Last_name varchar(100) not null,
Address varchar(100) not null,
Zipcode varchar(100) not null,
Email_address varchar(100),
Phone_number varchar(100),
Country varchar(100) not null,
CorporationID int not null,
foreign key (CorporationID) references Corporation(CorporationID)
);

create table if not exists Invoice(
InvoiceID int not null auto_increment primary key,
DateIssued varchar(100),
Paid boolean not null,
Amount int not null
);

create table if not exists `Order`(
OrderID int not null auto_increment primary key,
CustomerID int not null,
foreign key (CustomerID) references Customer(CustomerID),
Order_date varchar(100) not null,
Billing_address varchar(100) not null,
Estimated_delivery_date varchar(100),
Order_status varchar(100),
InvoiceID int not null,
foreign key (InvoiceID) references Invoice(InvoiceID)
);

create table if not exists OrderLine(
OrderID int not null,
foreign key (OrderID) references `Order`(OrderID),
ProductID int not null,
foreign key (ProductID) references Product(ProductID),
Quantity int not null
);

create table if not exists CreditCard(
CardNr varchar(100) not null,
InvoiceID int not null,
foreign key (InvoiceID) references Invoice(InvoiceID),
primary key (CardNr, InvoiceID),
ExpirationDate varchar(100) not null,
CardHolderName varchar(100) not null,
CVC varchar(3) not null
);

insert into Product (ProductID, Name, Price, Stock)
values (1, "a", 1, 1);

insert into Product (ProductID, Name, Price, Stock)
values (2, "b", 2, 2);

insert into Product (ProductID, Name, Price, Stock)
values (3, "c", 3, 3);

insert into Corporation (CorporationID, CorporationName)
values (1, "a");

insert into Corporation (CorporationID, CorporationName)
values (2, "b");

insert into Corporation (CorporationID, CorporationName)
values (3, "c");

insert into Customer (CustomerID, First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values (1, "a", "z", "vei1", "1", "1@uia.no", "norge", 1);

insert into Customer (CustomerID, First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values (2, "b", "y", "vei2", "2", "2@uia.no", "sverige", 2);

insert into Customer (CustomerID, First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values (3, "c", "x", "vei3", "3", "3@uia.no", "norge", 3);

insert into Invoice (InvoiceID, DateIssued, Paid, Amount)
values (1, "1.1", true, 1);

insert into Invoice (InvoiceID, DateIssued, Paid, Amount)
values (2, "1.2", true, 2);

insert into Invoice (InvoiceID, DateIssued, Paid, Amount)
values (3, "1.3", true, 3);

insert into `Order` (OrderID, CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (1, 1, "1.1", "vei1", "2.1", 1);

insert into `Order` (OrderID, CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (2, 2, "1.2", "vei2", "2.2", 2);

insert into `Order` (OrderID, CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (3, 3, "1.1", "vei1", "2.1", 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (1, 1, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (2, 2, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (3, 3, 3);

insert into CreditCard (CardNr, InvoiceID, ExpirationDate, CardHolderName, CVC)
values ("1234567891234567", 1, "1.1", "a", "123");

insert into CreditCard (CardNr, InvoiceID, ExpirationDate, CardHolderName, CVC)
values ("1234567891234568", 2, "1.2", "b", "234");

insert into CreditCard (CardNr, InvoiceID, ExpirationDate, CardHolderName, CVC)
values ("1234567891234569", 3, "1.3", "b", "345");

*/

select Customer.First_name, Customer.Last_name, OrderLine.Quantity, Product.`Name`
from Customer
inner join `Order`
on Customer.CustomerID = `Order`.OrderID
inner join OrderLine
on `Order`.OrderID = OrderLine.OrderID
inner join Product
on OrderLine.ProductID = Product.ProductID;