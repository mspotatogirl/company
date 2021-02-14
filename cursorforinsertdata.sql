use sqlmsserver

declare @prodId INT
declare @stkAvail INT
declare @price DECIMAL(10,2)
declare @date  DATE


declare ins_cursor cursor for 
        select prodId,maxAvail,price,date from Product

    open ins_cursor

    fetch next from ins_cursor into @prodId, @stkAvail,@price,@date 

 while @@FETCH_STATUS=0
    Begin
  insert into StockAvailability (prodId,stkAvail,price,date)
   values( @prodId, @stkAvail,@price,@date)

  fetch next from ins_cursor into @prodId, @stkAvail,@price,@date
	 End
close ins_cursor
    deallocate ins_cursor

	
