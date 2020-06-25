create table Admin(
	Aid int primary key identity not null,
	AName nvarchar(50),
	AEmail nvarchar(50),
	APassword nvarchar(50),
	AStatus nvarchar(50),
	role nvarchar(50)               /* table for Admin*/
)

create table Login(
	Lid int primary key identity not null,
	Name nvarchar(50),
	Email nvarchar(50),
	Password nvarchar(50),	
	role nvarchar(50)               /* table for Login*/
)


create table Categories(
	Cid int primary key identity not null,
	CatName nvarchar(50),
             
			 /* table for Categories*/
)
create table Product(
	Pid int primary key identity not null,
	Cid int,
	PName nvarchar(50),
	Barcode nvarchar(max),
    Expiry nvarchar(50),
			 /* table for Product*/
)
create table PurchaseInvoice(
	PIid int primary key identity not null,
	Pid int,
	Qty nvarchar(50),
	PerUnitPrice nvarchar(50),
    Total nvarchar(max),
			 /* table for PurchaseInvoice*/
)
create table Supplier(
	Sid int primary key identity not null,
	
	SName nvarchar(50),
	SContact nvarchar(50),
    SAddress nvarchar(max),
	SNtn nvarchar(50),
	Status nvarchar(50),
			 /* table for Supplier*/
)
create table Workers(
	Wid int primary key identity not null,	
	WName nvarchar(50),
	WContact nvarchar(50),
    WAddress nvarchar(max),
	WEmail nvarchar(50),
	WDesignation nvarchar(max),
	WPassword nvarchar(50),
			 /* table for Workers*/
)
create table ProductPricing(
	PPid int primary key identity not null,	
	PIid int,
	ProfitPercent nvarchar(50),
	DiscountPercent nvarchar(50),
    FinalPrice nvarchar(max),
			 /* table for ProductPricing*/
)
create table Sales(
	SLid int primary key identity not null,	
	PIid int,
	PQty nvarchar(50),
	GrossTotal nvarchar(50),
	TotalPriceEach nvarchar(50),
	DiscountPrice nvarchar(50)
			 /* table for Sales*/
)
create table Bill(
	Bid int primary key identity not null,	
	SLid int,
			 /* table for Bill*/
)
create table History(
	Hid int primary key identity not null,	
	Wid int,
	TimeLogin nvarchar(50),
	TimeLogout nvarchar(50)
			 /* table for History*/
)
