Create Database Golden_Valley;


Create Table Author
(AuthorID	Varchar	(8)	  Primary Key,
 Name    	Varchar	(60)	Not Null,
 Phone	  Varchar  (15) Not Null,
 Email	Varchar     (50)	Not Null);


Insert Into Author Values
('A1001',	'Juu',	'09975522903',	'www.juu@gmail.com'),
('A1002',	'Nyi Mon Lwin',	'09750770446',	'www.nyimonlwin@gmail.com'),
('A1003',	'Aung Ko',	'09254001000',	'www.aungko@gmail.com'),
('A1004',	'Htay Maung',	'09450550440',	'www.htaymaung@gmail.com'),
('A1005',	'Kyaw Swar',	'09986611388', 'www.kyawswar@gmail.com'),
('A1006',	'U Saw Chit',	'09974511376',	'www.usawchit@gmail.com'),
('A1007',	'A Kyi Taw',	'09964977287',	'www.akyitaw@gmail.com'),
('A1008',	'Pann Nu',	'09772078126',	'www.pannnu@gmail.com');



Create Table Category
(CategoryID	  Varchar	(8)	Primary Key,
 Name	        Varchar	(60)	Not Null,
 Description	Varchar	(70)	Not Null);




Insert Into category Values
('Y1001',	'Romance',	'You Can Feel Love'),
('Y1002',	'Drama',	'Can make you Cry'),
('Y1003',	'Horror',	'Do not read alone'),
('Y1004',	'Knowledge',	'Can know about Wild Animal'),
('Y1005',	'Si-Fi',	'Can See colorful Effect'),
('Y1006',	'Action',	'Can see the beauty of Kung FU');




Create Table Publisher
(PubID	  Varchar	(8)	Primary Key,
 Name	    Varchar	(60)	Not Null,
 Contact	Varchar	(15)	Not Null,
 Location	Varchar	(120)	Not Null);




Insert Into publisher values
('P1001',	'Golden Valley',	'09453372340',	'42B, Mahabandoola Road, Kyauktada Township, Yangon'),
('P1002', 'Star World',	'09266088235',	'125F, Kyaikkasan Road, Tamwe Township, Yangon'),
('P1003',	'Royal Myanmar',	'09799660118',	'79D, Bogyoke Aung San Street, Pabedan Township, Yangon'),
('P1004',	'Sunflower Group',	'09255350110',	'13G, Insein Road, Hlaing Township, Yangon, Myanmar'),
('P1005',	'Myanmar A Hla',	'09973330018',	'40H, Parami Road, Mayangon Township, Yangon'),
('P1006',	'Blue Sky',	'09450167777',	'18C, Shwedagon Pagoda Avenue,Dagon Township, Yangon');




Create Table Customer
(CID	    Varchar	(8)	Primary Key,
 CName	  Varchar	(60)	Not Null,
 PhoneNo	Varchar	(15)	Not Null,
 Location	  Varchar	(120)	Not Null);





Insert Into customer Values
('C1001',	'Book Heaven Yangon',	'09453394377',	'28B, Bogyoke Street,Pabedan Township, Yangon'),
('C1002',	'Yangon Book Emporium',	'09255038191',	 '15C, Sule Pagoda Road,Kyauktada Township, Yangon'),
('C1003',	'Golden Pagoda Books',	'09975402765',	'7C, Sule Pagoda Street,Dagon Township, Yangon'),
('C1004',	'Mystic Chapters Book Store',	'09254378068',	'14, Kandawgyi Lake Avenue, Mingalar Taung Nyunt Township, Yangon'),
('C1005',	'Papyrus Oasis',	'09795648005',	'33D, Bahan Street,Bahan Township, Yangon'),
('C1006',	'Raverside Reads',	'09965921306',	'22G, Strand Road, Pabedan Township, Yangon'),
('C1007',	'Enchanted Town Yangon',	'09459073901',	'11A, Hledan Street, Kamayut Township, Yangon'),
('C1008',	'Downtown Library Heaven',	'09250286753',	'40, Mahabandoola Road, Kyauktada Township, Yangon'),
('C1009',	'Silk Road Book Bazzar',	'09793068093',	'16H, Parami Road, Mayangon Township, Yangon'),
('C1010',	'Burmese Book Nook',	'09430678502',	'26H, Parami Road, Mayangon Township, Yangon');





Create Table EmployeeType
(ETID	   Varchar	(8)	  Primary Key,
 Status	 Varchar	(30)	Not Null,
 Salary	 Dec	    (10,2)	Not Null);




Insert Into employeetype Values
('ET001',	'Sale Staff',	'400000.00'),
('ET002',	'Account Executive - Sales',	'1000000.00'),
('ET003',	'Manager',	'1500000.00'),
('ET004',	'Supervisor',	'900000.00');



Create Table Employee
(EID	Varchar	(8)	Primary Key,
Name	Varchar	(60)	Not Null,
Address	Varchar	(120)	Not Null,
HireDate	Date		Not Null,
ETID	Varchar	(8)	Not Null,
Foreign Key (ETID) References EmployeeType(ETID));


Insert Into employee values
('E1001',	'Eaint Pan',	'10G, Kaba Aye Pagoda Road, Yankin Township, Yangon',	'2022-03-18',	'ET001'),
('E1002',	'Nwe Nwe'	 ,'27B, Bahan Street, Bahan Township, Yangon',  '2022-03-21',	'ET001'),
('E1003',	'Nay Win'	 ,'6A, Hledan Street,Kamayut Township, Yangon',	'2022-04-07',	'ET001'),
('E1004',	'Lin Khant',	'24D, Parami Road, Mayangon Township, Yangon',	'2022-05-03',	'ET001'),
('E1005',	'Sai Mon',	'9E, Kyaikkasan Road, Tamwe Township, Yangon',	'2022-07-10',	'ET001'),
('E1006',	'Saw Su',	'212A,Bogyoke Aung San Road,Pabedan Township, Yangon',	'2021-02-09',	'ET002'),
('E1007',	'Win Myat',	'18, Insein Road, Hlaing Township, Yangon',	'2021-04-02',	'ET003'),
('E1008',	'Chan Myae',	'29C, Shwedagon Pagoda Street, Dagon Township, Yangon',	'2022-01-03',	'ET004');




Create Table Book
(BookID	Varchar	(8)	  Primary Key,
Name	Varchar	(60)	    Not Null,
ProductionDate	Date		Not Null,
Price	Dec	(9,2)	        Not Null,
CategoryID	Varchar	(8)	Not Null,
Foreign Key(CategoryID) References Category(CategoryID),
PubID	Varchar	(8)	Not Null,
Foreign Key (PubID) References Publisher(PubID));


Insert Into book values
('B1001',	'I am  Rose, Darlin',	'2020-03-18',	'3000.00',	'Y1001',	'P1001'),
('B1002',	'Light of my life',	'2020-05-21',	'2500.00',	'Y1002',	'P1002'),
('B1003',	'Can I Be Your NightMare?',	'2021-03-07',	'2000.00',	'Y1003',	'P1003'),
('B1004',	'Love In The Sky',	'2021-08-19',	'2000.00',	'Y1001',	'P1001'),
('B1005',	'Wild Life',	'2022-02-03',	'2500.00',	'Y1004',	'P1004'),
('B1006',	'The Mother',	'2022-08-17',	'2500.00',	'Y1002',	'P1002'),
('B1007',	'A Magical Forest',	'2023-05-04',	'1500.00',	'Y1005',	'P1005'),
('B1008',	'Dragon Warrior',	'2023-06-01',	'4000.00',	'Y1006',	'P1006');




Create Table Orders
(OID	Varchar	(8)	Primary Key,
OrderDate	Date	     Not Null,
CID	  Varchar	(8)	   Not Null,
Foreign Key (CID) References Customer(CID),
EID	Varchar	(8)	Not Null,
Foreign Key (EID) References Employee(EID));


Insert Into Orders Values
('O1001',	'2023-01-12',	'C1001',	'E1001'),
('O1002',	'2023-02-07',	'C1002',	'E1002'),
('O1003',	'2023-02-07',	'C1003',	'E1002'),
('O1004',	'2023-03-13',	'C1001',	'E1003'),
('O1005',	'2023-03-24',	'C1004',	'E1001'),
('O1006',	'2023-04-28',	'C1002',	'E1004'),
('O1007',	'2023-04-30',	'C1005',	'E1002'),
('O1008',	'2023-05-14',	'C1006',	'E1003'),
('O1009',	'2023-05-23',	'C1004',	'E1004'),
('O1010',	'2023-06-02',	'C1003',	'E1008'),
('O1011',	'2023-06-02',	'C1007',	'E1005'),
('O1012',	'2023-06-18',	'C1005',	'E1002'),
('O1013',	'2023-07-21', 'C1008',	'E1006'),
('O1014',	'2023-07-29',	'C1009',	'E1004'),
('O1015',	'2023-08-03',	'C1010',	'E1007');





Create Table Author_Book
(BookID	Varchar	(8)	 Not Null,
Foreign Key (BookID) References Book(BookID),
AuthorID	Varchar	(8)	 Not Null,
Foreign Key(AuthorID) References Author(AuthorID),
Primary Key (AuthorID,BookID));

Insert Into Author_Book Values
('B1001',	'A1001'),
('B1001',	'A1002'),
('B1002',	'A1003'),
('B1003',	'A1004'),
('B1004',	'A1001'),
('B1005',	'A1005'),
('B1005',	'A1006'),
('B1006',	'A1007'),
('B1007',	'A1008'),
('B1008',	'A1006');





Create Table Order_Book

(OID	Varchar	(8) Not Null,
Foreign Key(OID) References Orders(OID),
Quantity Int       Not Null,
Total    Dec  (9,2) Not Null,
BookID	Varchar	(8) Not Null,
Foreign Key (BookID) References Book (BookID),
Primary Key (OID,BookID));



Insert Into Order_Book Values
('O1001', 20, '60000.00', 'B1001'),
('O1001', 15, '37500.00', 'B1002'),
('O1002', 25, '87500.00', 'B1001'),
('O1003', 30, '60000.00', 'B1003'),
('O1004', 20, '40000.00', 'B1004'),
('O1005', 40, '80000.00', 'B1004'),
('O1005', 25, '50000.00', 'B1003'),
('O1006', 30, '75000.00', 'B1005'),
('O1007', 20, '50000.00', 'B1002'),
('O1008', 15, '30000.00', 'B1001'),
('O1008', 30, '60000.00', 'B1004'),
('O1008', 25, '62500.00', 'B1006'),
('O1009', 35, '87500.00', 'B1006'),
('O1010', 20, '40000.00', 'B1003'),
('O1011', 35, '52500.00', 'B1007'),
('O1011', 15, '37500.00', 'B1005'),
('O1012', 20, '80000.00', 'B1008'),
('O1013', 30, '90000.00', 'B1001'),
('O1014', 25, '50000.00', 'B1004'),
('O1014', 40, '60000.00', 'B1007'),
('O1015', 15, '30000.00', 'B1003');



-- -- Q.	write a query that Select all orders who was serviced by 'Nwe Nwe'
-- 
Select   o.OID, o.OrderDate, e.EID, e.Name, et.status
From     orders as o,employee as e, employeetype as et
Where    o.EID=e.EID
and      e.ETID=et.ETID
and      e. Name='Nwe Nwe'
and      e.EID='E1002';

-- Write a quary that select all the orders and books which were written by author "Juu".

Select   Count(b.BookID)as NoOfBook, o.OID, o.OrderDate, b.Name as BookName, a.AuthorID, a.Name as AuthorName
From     Author as a, author_book as ab, book as b, order_book as ob, orders as o
Where    a.AuthorID=ab.AuthorID
AND      ab.BookID=b.BookID
AND      b.BookID=ob.BookID
AND      ob.OID=o.OID
AND      a.Name='Juu'
Group By b.Name;


-- Write a quary that select all the customer  who order the Book "Can I Be Your NightMare?".

Select    c.CID, c.CName,o.OrderDate, b.BookID, b.Name
From      customer as c, orders as o, order_book as ob, book as b
Where     c.CID=o.CID
And       o.OID=ob.OID
And       ob.BookID=b.BookID
And       b.Name='Can I Be Your NightMare?'
Order By  c.CName asc;

   

-- Write a query that select all the books that was sold by the category "Romance".


Select    c.Name as Category,o.OID,o.OrderDate, b.Name as BookName
From      category as c, book as b, order_book as ob, orders as o
Where     c.CategoryID=b.CategoryID
And       b.BookID=ob.BookID
And       ob.OID=o.OID
And       c.Name='Romance';



-- Write a query that enhance the salary '550000' to the employee type 'Sale Staff'

Update     employeeType
Set        Salary='550000'
Where      Status='Sale Staff';




-- Write a query that change the product quantity "40"  and Total '120000' from the order "01002".

Update     order_book
Set        Quantity='40',Total='120000'
Where      OID='O1002';





-- Write a query that delete the order "O1003" from the table.

Delete
From    order_book
Where   OID='O1003';

Delete
From        orders
where       OID='O1003';



-- Write a query that delete the author "A1004" from the table.
Delete
From        author_book
Where       AuthorID='A1004';


Delete
From        author
Where       AuthorID='A1004';
                          