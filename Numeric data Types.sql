create table DataTypeNumeric(
	integers int, /*-2,147,483,648	to 2,147,483,647*/
	big_int bigint, /*-9,223,372,036, 854,775,808	9,223,372,036, 854,775,807*/
	small_int smallint, /*32,768	32,767*/
	binarydigit bit, /* 0 or 1*/
	tiny_int tinyint, /* 0 to 255*/
	float_num float, /* bigger than real*/
	real_num real
);

alter table DataTypeNumeric add NTN_id int primary key identity not null
select * from DataTypeNumeric
insert into DataTypeNumeric values(2500,-748998329,7865,1,259,19.01E23,12.78) /* terminated becuase tiny int exceeded*/

insert into DataTypeNumeric values(2500,-748998329,7865,4,123,19.01E23,12.78) /*not  terminated whether i wrote bit with 4 it takes 1*/

insert into DataTypeNumeric values(2500,-748998329,7865,1,100,19.01E309,12.78) /* terminated becuase float limit power is 308 exceeded*/

insert into DataTypeNumeric values(-18787827387283782378232,-748998329,7865,1,100,19.01E23,12.78) /* terminated becuase int exceeded*/