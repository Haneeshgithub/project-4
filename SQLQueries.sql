
select * from CustomerInfo

insert into CustomerInfo Values(1001,'Tom Cruise','1234567890','203, Park St, Raleigh, NC - 27603');
insert into CustomerInfo Values(1002,'Robert Downey Jr.','9989877791','12-A, High St, Raleigh, NC - 27605');
insert into CustomerInfo Values(1003,'Taylor Swift','8179827199','2A, 3rd Ave, Charlotte, NC - 28134');
insert into CustomerInfo Values(1004,'Serena Williams','8714791879','90, Gorman St, Charlotte, NC - 28201');


update CustomerInfo set cust_number = 0987654321 where cust_id = 1001
update CustomerInfo set cust_name = 'Swift' where cust_name = 'Taylor Swift'









select * from ProductInfo

INSERT INTO ProductInfo VALUES (1, 'Air Filter ',506);
INSERT INTO ProductInfo VALUES (2, 'Axel Rod ', 750);
INSERT INTO ProductInfo VALUES (3, 'Battery', 200);
INSERT INTO ProductInfo VALUES (4, 'Brake Fluid', 100);









select * from transactionInfo

insert into TransactionInfo values(101,1001,1,'TomCrusie','Air Filter',506,2,5,1062.6,1100,38,1100,getdate())
insert into TransactionInfo values(102,1002,2,'Robert Downey','Axel Rod',506,2,5,1062.6,1100,38,1100,getdate())
insert into TransactionInfo values(103,1003,3,'Taylor Swift','Battery',506,2,5,1062.6,1100,38,1100,getdate())
insert into TransactionInfo values(104,1004,4,'Serena Williams','Brake Fluid',506,2,5,1062.6,1100,38,1100,getdate())

delete from TransactionInfo where customer_id = 1004


select a.product_name, a.product_price, b.quantity,b.tax
from productinfo a, transactioninfo b
where a.product_id = b.product_id

select a.cust_id,a.cust_name,a.cust_address,b.product,b.price
from CustomerInfo a, TransactionInfo b
where a.cust_id = b.customer_id


select a.cust_name,a.cust_address,b.product_name,c.price,c.quantity
from CustomerInfo a, ProductInfo b, TransactionInfo c
where a.cust_id = c.customer_id and b.product_id = c.product_id and a.cust_id = 1003














