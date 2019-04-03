alter table tblKredencijal add constraint df_aktiven default N'0' for aktiven
/**/
if OBJECT_ID('spAddKorisnici')is not null
begin
drop proc spAddKorisnici
end
go
create proc spAddKorisnici
@id_korisnik int,
@korisnickoIme nvarchar(20),
@lozinka nvarchar(50),
@aktiven bit
as
begin
insert into tblKredencijal(
korisnickoIme,
lozinka)
values(
@korisnickoIme,
@lozinka)
set @id_korisnik=SCOPE_IDENTITY()
select
korisnickoIme=@korisnickoIme,
lozinka=@lozinka,
from tblKredencijal
where id_korisnik=@id_korisnik
end
/*ova e proceduri za kreiranje korisnici*/
if OBJECT_ID('spGetKorisnici')is not null
begin
drop proc spGetKorisnici
end
go
create proc spGetKorisnici
@id_korisnik int
as
begin
select*
from tblKredencijal
where id_korisnik=@id_korisnik
end
go
/*ova e procedura za citanje korisnici*/
if OBJECT_ID('spUpdateKorisnici')is not null
begin
drop proc spUpdateKorisnici
end
go
create proc spUpdateKorisnici
@id_korisnik int,
@korisnickoIme nvarchar(20),
@lozinka nvarchar(50),
@aktiven bit
as
begin
update tblKredencijal
set korisnickoIme=@korisnickoIme 
lozinka=@lozinka
aktiven=@aktiven
where id_korisnik=@id_korisnik
end
go
/*ova e procedura za izmena na korisnici*/
if OBJECT_ID('spDeleteKorisnici')is not null
begin
drop proc spDeleteKorisnici
end
go
create proc spDeleteKorisnici
@id_korisnik int
as
begin
delete
from tblKredencijal
where id_korisnik=@id_korisnik
end
go
/*ova e procedura za brisenje korisnici*/