IF OBJECT_ID('spAddOddel')is not null
begin
drop proc spAddOddel
end
go
create proc spAddOddel
@id_oddel int,
@oddel nvarchar(20)
as
begin
insert into tblOddel(
id_oddel,
oddel)
values(
@id_oddel,
@oddel)
set @id_oddel=SCOPE_IDENTITY()
select
oddel=@oddel
from tblOddel
where id_oddel=@id_oddel
end
/*ova e procedura za pisuvanje pod vo oddel*/
IF OBJECT_ID('spGetOddel')is not null
begin
drop proc spGetOddel
end
go
create proc spGetOddel
@id_oddel int
as
begin
select*
from tblOddel
where id_oddel=@id_oddel
end
go
/*ova e za citanje pod vo oddel*/
IF OBJECT_ID('spUpdateOddel')is not null
begin
drop proc spUpdateOddel
end
go
create proc spUpdateOddel
@id_oddel int,
@oddel nvarchar(20)
as
begin
update tblOddel
set oddel=@oddel
where id_oddel=@id_oddel
/*ova e procedura za izmena pod vo oddel*/
if  OBJECT_ID('spDeleteOddel') is not null
begin
drop proc spDeleteOddel
end
go
create proc spDeleteOddel
@id_oddel int
as
begin
delete
from tblOddel
where id_oddel=@id_oddel
end
go
/*ova e procedura za brisenje pod vo oddel