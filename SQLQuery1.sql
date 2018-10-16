use Sep19CHN

Create Table Mounika.Customer
(
CustId int identity(1000,1) primary key,
CustName varchar(20),
DOB DateTime,
CustAdd Varchar(20),
CustRegion VarChar(20),
CustPhno bigint
)

Drop Table Mounika.Customer

insert into Mounika.Customer values('Mona', '07/11/1996', 'RajaStreet', 'Chennai', 9876875678)
insert into Mounika.Customer values('Ram', '09/12/1996', 'VK nagar', 'Bangalore',9876875678)
insert into Mounika.Customer values('Hari', '07/10/1998', 'TVS steet', 'Pune', 9876875678)
insert into Mounika.Customer values('Raj', '07/8/1998', 'TVS steet', 'Hyderabad', 9876875678)
insert into Mounika.Customer values('Rathi', '07/10/1999', 'TVS steet', 'Pune', 9876875678)

--DELETE FROM Mounika.Customer

--Select*from Mounika.Customer