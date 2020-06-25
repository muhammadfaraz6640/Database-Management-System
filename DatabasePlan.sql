/*-----------------------inverntory Control System-----------------

1)Admin
	Aid , Aname , Email , password , Status , role
2)Login 
	Lid , Email , password , role
3)Categories 
	Cid , Catname
4)Product 
	Pid , Cid , PName , Barcode , Expiry 
5)PurchaseInvoice (from Supplier)
	PIid , Pid , Qty , PerUnitPrice , Total
6)Supplier
	Sid , SName , SContact , SAddress , SNtn , Status
7) Workers 
	Wid , WName , WAddress , WContact , WEmail , WDesignation , WPassword
8)ProductPricing
	PPid , PIid , ProfitPercent , DiscountPercent , FinalPrice
9)Sales
	SLid , Pid , PQty , PIid , DiscountPrice , TotalPriceEach , GrossTotal
10)Bill 
	Bid , SLid 

11) History
	Hid , Wid , TimeLogin , TimeLogout

	*/