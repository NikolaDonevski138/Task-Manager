IF OBJECT_ID('spAddPozicija')is not null
begin
drop proc spAddPozicija
end
go
create proc spAddPozicija
@id_pozicija int,
@pozicija nvarchar(25)
as
begin
insert into tblPozicija(
id_pozicija,
pozicija)
values(
@id_pozicija,
@pozicija)
set @id_pozicija=SCOPE_IDENTITY()
select
pozicija=@pozicija
from tblPozicija
where id_pozicija=@id_pozicija
end
/*ova e procedura za pisuvanje pod vo pozicija*/
IF OBJECT_ID('spGetPozicija')is not null
begin
drop proc spGetPozicija
end
go
create proc spGetPozicija
@id_pozicija int
as
begin
select*
from tblPozicija
where id_pozicija=@id_pozicija
end
go
/*ova e za citanje pod vo pozicija*/
IF OBJECT_ID('spUpdatePozicija')is not null
begin
drop proc spUpdatePozicija
end
go
create proc spUpdatePozicija
@id_pozicija int,
@pozicija nvarchar(25)
as
begin
update tblPozicija
set pozicija=@pozicija
where id_pozicija=@id_pozicija
/*ova e procedura za izmena pod vo pozicija*/
if  OBJECT_ID('spDeletePozicija') is not null
begin
drop proc spDeletePozicija
end
go
create proc spDeletePozicija
@id_pozicija int
as
begin
delete
from tblPozicija
where id_pozicija=@id_pozicija
end
go
/*ova e procedura za brisenje pod vo pozicija