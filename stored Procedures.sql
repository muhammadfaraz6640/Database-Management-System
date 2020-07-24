Create PROCEDURE InsertProductProcedure
(
@name nvarchar(50),
@description nvarchar(max),
@price int,
@Qty int,
@image nvarchar(max),
@category int
)
AS
BEGIN
insert into ProductView(name,description,price,quantity,image,category) values (@name,@description,@price,@Qty,@image,@category)
END

select * from Category