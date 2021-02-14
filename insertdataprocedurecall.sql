set @date=2019-09-30,@prodId.product=45890,@maxAvail=2;
CALL `sqllead`.`insertdata`(@date_date,@prodId_int,@stkAvail_int);
select * from sqllead.product;
select * from sqllead.stockavailability;