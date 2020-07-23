create table StringDataTypes(
	characters char(10), /* it takes fixed length storage of 10 bits in ram either you enter only 5 characters memory consumes more and extra  */
	char_varchar nvarchar(100), /* it takes variable length storage of 100 characters with maximium of 800 characters it takes memory that you enters */
	char_text text, /*stores data upto 2GB*/
	char_max nvarchar(max), /*no limit with variable length stroage*/
);
