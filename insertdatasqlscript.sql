CREATE DEFINER=`root`@`localhost` PROCEDURE `insertdata`(date date,prodId int,maxAvail int)
BEGIN
insert into Stockavailability(date,prodId,stkAvail)
(select date,prodId,maxAvail from product
where maxAvail>0);
END