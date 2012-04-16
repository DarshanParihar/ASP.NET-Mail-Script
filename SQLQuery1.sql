create database dushayant
use dushayant

create table tbl_employee(id int,Ename varchar(50),salary varchar(50),mobile varchar(50))
select * from tbl_employee
insert into tbl_employee(id,Ename,salary,mobile) values (2,'kdjf','58000','5656')
insert into tbl_employee(id,Ename,salary,mobile) values (3,'satish','150000','954588')
insert into tbl_employee(id,Ename,salary,mobile) values (4,'patel','35000','901458')
insert into tbl_employee(id,Ename,salary,mobile) values (5,'raju','5200','787878')


delete from tbl_employee where id='2'

update tbl_employee set Ename='ravan',salary='547899',mobile='47799' where id=5

select Ename from tbl_employee

/* start store procedure*/
create procedure SP_insert(@id int,@Ename varchar(50),@salary varchar(50),@mobile varchar(50))
as
insert into tbl_employee (id,Ename,salary,mobile) values(@id,@Ename,@salary,@mobile)

SP_insert 6,'pralsh','51478','32145697'

create proc SP_select
as
select * from tbl_employee

SP_select

create proc SP_update(@id int,@Ename varchar(50),@salary varchar(50),@mobile varchar(50))
as
update tbl_employee set Ename=@Ename,salary=@salary,mobile=@mobile where id=@id


SP_update 5,'ganga','12548','987456321'

create proc SP_delete(@id int)
as
delete from tbl_employee where id=@id

SP_delete 4
SP_select