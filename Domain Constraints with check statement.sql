create table Domain_Constraints(
	sex char not null
	check(sex IN ('M','F'))
)

insert into Domain_Constraints values('g') /*The INSERT statement conflicted with the CHECK constraint "CK__Domain_Cons__sex__6383C8BA" hence terminated*/

insert into Domain_Constraints values('M')

select * from Domain_Constraints
create domain sex_type as char check (value in ('m','f')); /*now sex_type becomes restricted datatype*/
