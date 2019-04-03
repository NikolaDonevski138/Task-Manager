if OBJECT_ID('spFiltriranjeNaTeamManager')is not null
begin
drop proc spFiltriranjeNaTeamManager
end
go
create proc spFiltriranjeNaTeamManager
@naslov nvarchar(20),
@opis nvarchar(15),
@proekt nvarchar(50),
@ime nvarchar(20),
@prezime nvarchar(50),
@oddel nvarchar(20)
as
begin
select * 
from tblZadaca z 
inner join tblVraboten v on v.id_vraboten=z.id_vraboten
inner join tblOddel o on o.id_oddel=v.id_oddel
inner join tblStatus s on s.id_status = z.id_status
where (s.opis = @opis OR @opis is null) 
	and (z.proekt = @proekt OR @proekt is null)
	and (z.naslov = @naslov OR @naslov is null) 
	and(v.ime=@ime OR @ime is null)
	and(v.prezime=@prezime OR @prezime is null)
	and(o.oddel=@oddel OR @oddel is null)
end