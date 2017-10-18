use mandatory2;

create table if not exists Product(
ProductID int not null auto_increment primary key,
Name varchar(100) not null,
Price int not null,
Stock varchar(100) not null,
RecorderLevel varchar(100)
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

create table if not exists Customer(
CustomerID int not null auto_increment primary key,
First_name varchar(100) not null,
Last_name varchar(100) not null,
Address varchar(100) not null,
Zipcode varchar(100) not null,
Email_address varchar(100),
Phone_number varchar(100),
Country varchar(100) not null,
CorporationID int,
foreign key (CorporationID) references Corporation(CorporationID)
);

create table if not exists Corporation(
CorporationID int not null auto_increment primary key,
CorporationName varchar(100) not null
);

/* Mulig de neste tabellene må endres etter tilbakemelding fra divinder */

create table if not exists Invoice(
InvoiceID int not null auto_increment primary key,
DateIssued varchar(100),
Paid boolean not null,
Amount int not null
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



/* Slutt på tabeller som muligens må endres */

