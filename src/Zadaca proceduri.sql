alter table tblZadaca add constraint df_odobrena default N'0' for odobrena
/**/
if OBJECT_ID('spAddTask')is not null
begin
drop proc spAddTask
end
go
create proc spAddTask
@id_zadaca int,
@id_vraboten int,
@id_status int,
@naslov nvarchar(20),
@opis nvarchar(70),
@proekt nvarchar(50),
@odobrena bit,
@estimacija int,
@datum_kreiranje date,
@datum_posledna_promena date
as
begin
insert into tblZadaca(
id_status,
id_vraboten,
naslov,
opis,
proekt,
estimacija,
odobrena,
datum_kreiranje,
datum_posledna_promena)
values(
@id_vraboten ,
@id_status ,
@naslov ,
@opis ,
@proekt,
@odobrena ,
@estimacija ,
@datum_kreiranje ,
@datum_posledna_promena)
set @id_zadaca=SCOPE_IDENTITY()
select
id_vraboten=@id_vraboten,
id_status=@id_status,
naslov=@naslov,
opis=@opis,
proekt=@proekt,
estimacija=@estimacija,
datum_kreiranje=@datum_kreiranje,
datum_posledna_proemna=@datum_posledna_promena
from tblZadaca
where id_zadaca=@id_zadaca
end
/*procedura za zapisuvanje na zadaci*/
if OBJECT_ID('spGetTask')is not null
begin
drop proc spGetTask
end
go
create proc spGetTask
@id_zadaca int
as
begin
select *
from tblZadaca
where (id_zadaca=@id_zadaca)
end
go
/*ova e procedura za citanje na zadaca*/
If OBJECT_ID('spUpdateTask')is not null
begin
drop proc spUpdateTask
end
go
create proc spUpdateTask
@id_vraboten int,
@id_zadaca int,
@id_status int,
@naslov nvarchar(20),
@proekt nvarchar(50),
@opis nvarchar(70),
@odobrena bit,
@estimacija int,
@datum_kreiranje date,
@datum_posledna_promena date
as
begin
update tblZadaca
set id_vraboten=@id_vraboten,
id_status=@id_status,
naslov=@naslov,
opis=@opis,
proekt=@proekt,
estimacija=@estimacija,
datum_kreiranje=@datum_kreiranje,
datum_posledna_promena=@datum_posledna_promena
where id_zadaca=@id_zadaca
end
go
/*ova e procedura za izmena vo zadaci*/
if OBJECT_ID('spDeleteTask')is not null
begin
drop proc spDeleteTask
end
go
create proc spDeleteTask
@id_zadaca int
as
begin
delete
from tblZadaca
where (id_zadaca=@id_zadaca)
end
go
/*ova e proceura za brisenje na zadaci*/