CREATE DEFINER=`root`@`localhost` PROCEDURE `myprocedure`(date date,prodId int)
BEGIN
select date
from product inner join stockavailability
on product.date=stockavailability.date;
END