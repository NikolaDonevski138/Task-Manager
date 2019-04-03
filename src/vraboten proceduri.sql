if OBJECT_ID('spAddVraboteni')is not null
begin
drop proc spAddVraboteni
end
go
create proc spAddVraboteni
@id_vraboten int,
@id_pozicija int,
@id_kredencijali int,
@id_oddel int,
@ime nvarchar(20),
@prezime nvarchar(50),
@telefonski_br nvarchar(12),
@adresa  nvarchar(30),
@grad nvarchar(20)
as
begin
insert into tblVraboten(
ime,
prezime,
telefonski_br,
adresa,
grad,
id_oddel,
id_pozicija,
id_kredencijali)
values(
@ime,
@prezime,
@telefonski_br,
@adresa,
@grad,
@id_oddel,
@id_pozicija,
@id_kredencijali)
set @id_vraboten=SCOPE_IDENTITY()
select
ime=@ime,
prezime=@prezime,
telefonski_br=@telefonski_br,
adresa=@adresa,
grad=@grad,
id_oddel=@id_oddel,
id_pozicija=@id_pozicija,
id_kredencijali=@id_kredencijali
from tblVraboten
where id_vraboten=@id_vraboten
end
drop proc spAddVraboteni
/*pogore e za create vraboten*/
if OBJECT_ID('spGetAllVraboteni')is not null
begin
drop proc spGetAllVraboteni
end
go
create proc spGetAllVraboteni
@id_vraboten int
as
begin
select *
from tblVraboten
where (id_vraboten=@id_vraboten)
end
go
/*ova e za citanje*/
If OBJECT_ID('spUpdateVraboteni')is not null
begin
drop proc spUpdateVraboteni
end
go
create proc spUpdateVraboteni
@id_vraboten int,
@id_zadaca int,
@id_pozicija int,
@id_kredencijali int,
@id_oddel int,
@ime nvarchar(20),
@prezime nvarchar(50),
@telefonski_br nvarchar(12),
@adresa  nvarchar(30),
@grad nvarchar(20)
as
begin
update tblVraboten
set ime=@ime,
prezime=@prezime,
telefonski_br=@telefonski_br,
adresa=@adresa,
grad=@grad
where id_vraboten=@id_vraboten
end
go
/*ova e za update*/
if  OBJECT_ID('spDeleteVraboteni') is not null
begin
drop proc spDeleteVraboteni
end
go
create proc spDeleteVraboteni
@id_vraboten int
as
begin
delete
from tblVraboten
where id_vraboten=@id_vraboten
end
go
/*ova e za brisenje*/