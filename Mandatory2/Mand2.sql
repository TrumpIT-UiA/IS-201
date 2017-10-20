use mand2;


create table if not exists Product(
ProductID int not null auto_increment primary key,
Name varchar(100) not null,
Price int not null,
Stock int not null,
ReorderLevel varchar(100)
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

# Alle IDene, som er primary keys blir auto_increment , som betyr at de ikke trenger
# å bli gitt en verdi fordi det skjer automatisk.

insert into Product (Name, Price, Stock, ReorderLevel)
values ("Chair", 299, 8, 6);

insert into Product (Name, Price, Stock, ReorderLevel)
values ("Table", 999, 3, 2);

insert into Product (Name, Price, Stock, ReorderLevel)
values ("Door", 1249, 2, 3);

insert into Product (Name, Price, Stock, ReorderLevel)
values ("TV", 4999, 5, 2);

insert into Product (Name, Price, Stock, ReorderLevel)
values ("Window", 2299, 3, 6);

insert into Product (Name, Price, Stock, ReorderLevel)
values ("Seng", 2999, 2, 1);

insert into Corporation (CorporationName)
values ("Kjell & co");

insert into Corporation (CorporationName)
values ("UiA");

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Emil", "Ruud", "Kvernveien 7b", "4630", "Emilr15@uia.no", "Norge", 2);

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Snorre", "Tunge", "Skogveien 14a", "4630", "Snorrt13@uia.no", "Norge", 2);

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Marius", "Norli", "Skogveien 7b", "4630", "mariug16@uia.no", "Norge", 1);

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Nicolay", "Leknes", "Skogveien 7b", "4630", "Nicolal@uia.no", "Norge", 2);

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Vebjørn", "Nordby", "Skogveien 7b", "4630", "Vebjn16@uia.no", "Norge", 1);

insert into Customer (First_name, Last_name, Address, Zipcode, Email_address, Country, CorporationID)
values ("Nikolai", "Dyb", "Dronningens gate 52", "4608", "Nikold@uia.no", "Norge", 2);

insert into Invoice (DateIssued, Paid, Amount)
values ("09.09.17", true, 2999); #1 seng

insert into Invoice (DateIssued, Paid, Amount)
values ("11.09.17", true, 5998); #2 senger

insert into Invoice (DateIssued, Paid, Amount)
values ("12.09.17", true, 9998); #2 TV

insert into Invoice (DateIssued, Paid, Amount)
values ("17.09.17", true, 2299); #1 vindu

insert into Invoice (DateIssued, Paid, Amount)
values ("14.10.17", true, 1794); #6 stoler

insert into Invoice (DateIssued, Paid, Amount)
values ("17.10.17", false, 6897); #3 vinduer

insert into Invoice (DateIssued, Paid, Amount)
values ("17.10.17", true, 2498); #2 dører

insert into Invoice (DateIssued, Paid, Amount)
values ("19.10.17", false, 4999); #1 TV

insert into Invoice (DateIssued, Paid, Amount)
values ("20.10.17", false, 1896); #1 table - 4 chairs

insert into Invoice (DateIssued, Paid, Amount)
values ("20.10.17", false, 7845); #1 TV - 1 table - 2 chairs - 1 door

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (2, "09.09.17", "Skogveien 14a", "13.09.17", 1);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (5, "11.09.17", "Skogveien 7b", "15.09.17", 2);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (5, "12.09.17", "Skogveien 7b", "16.09.17", 3);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (2, "17.09.17", "Skogvenei 14a", "21.09.17", 4);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (3, "14.10.17", "Skogveien 7b", "18.10.17", 5);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (2, "17.10.17", "Skogveien 14a", "21.10.17", 6);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (5, "17.10.17", "Skogveien 7b", "21.10.17", 7);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (6, "19.10.17", "Dronningens gate 52", "23.10.17", 8);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (1, "20.10.17", "Kverneveien 7b", "24.10.17", 9);

insert into `Order` (CustomerID, Order_date, Billing_address, Estimated_delivery_date, InvoiceID)
values (4, "20.10.17", "Skogveien 7b", "24.10.17", 10);

insert into OrderLine (OrderID, ProductID, Quantity)
values (1, 6, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (2, 6, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (3, 4, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (4, 5, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (5, 1, 6);

insert into OrderLine (OrderID, ProductID, Quantity)
values (6, 5, 3);

insert into OrderLine (OrderID, ProductID, Quantity)
values (7, 3, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (8, 4, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (9, 1, 4);

insert into OrderLine (OrderID, ProductID, Quantity)
values (9, 3, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (10, 4, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (10, 2, 1);

insert into OrderLine (OrderID, ProductID, Quantity)
values (10, 1, 2);

insert into OrderLine (OrderID, ProductID, Quantity)
values (10, 3, 1);

insert into CreditCard (CardNr, InvoiceID, ExpirationDate, CardHolderName, CVC)
values ("4925570008629865", 1, "08/19", "Snorre Tunge", "901");

insert into CreditCard (CardNr, InvoiceID, ExpirationDate, CardHolderName, CVC)
values ("4369957236080049", 3, "12/20", "Nikolai Dyb", "322");


# Oppgave 4a
select Customer.First_name, Customer.Last_name, OrderLine.Quantity, Product.`Name`from Customer
inner join `Order`
on Customer.CustomerID = `Order`.OrderID
inner join OrderLine
on `Order`.OrderID = OrderLine.OrderID
inner join Product
on OrderLine.ProductID = Product.ProductID;


# Oppgave 4b
select Product.`Name`, sum(Quantity) as TotalQuantity, sum(Quantity)*Product.Price as TotalSum
from OrderLine, Product
where OrderLine.ProductID = Product.ProductID
group by Product.ProductID asc
order by TotalSum desc
limit 3;

