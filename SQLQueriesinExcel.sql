use orderdata;
select * from orderdetails;

select DealerName from orderdetails where DealerName like 'B%';

select DealerName,avg(groprice*qty) as Average from orderdetails group by DealerName;

SELECT 
       Dealername,
       MIN(OrderCreationdate) AS LastOrder   
FROM orderdetails
GROUP BY Dealername;


select OrderCreationdate as Date,count(qty) as Quantity
     from orderdetails
     group by OrderCreationdate
     order by OrderCreationdate;


SELECT top 5 sum(groprice*qty) as Amount,MONTH(OrderCreationdate) As Month
FROM orderdetails  
GROUP BY DealerName,MONTH(OrderCreationdate)
order by Amount desc;

select DealerCode,SUM(groprice*qty) Amount,count(dealercode) Total from orderdetails
group by DealerCode having SUM(groprice*qty)>50000 order by Total desc;


use sqlmsserver;

create table Shop(
shopId   INT primary key,
shopName   VARCHAR(45));

create table Product(
prodId  INT primary key,
shopId  INT,
Constraint fk_shopID foreign key (shopId)  references Shop(ShopId),
price  DECIMAL(10,2),
maxAvail  INT,
date DATE);

create table StockAvailability(
stkId   INT,
prodId  INT,
Constraint fk_prodId foreign key (prodId)  references Product(prodId),
stkAvail  INT,
price  DECIMAL(10,2),
date  DATE);

insert into Shop values(1238,'Brijesh & Sons');
insert into Shop values(12809,'Aggarwal & Sons');
insert into Shop values(907238,'Lalwani Jewellers');
select * from Shop;

insert into Product values(740293,1238,453000.89,50,'2019-09-23');
insert into Product values(52993,12809,8792.00,5,'2019-07-21');
insert into Product values(77903,907238,421044,2,'2019-02-01');
select * from Product;

select * from StockAvailability;



 