if OBJECT_ID('spFiltriranjeNaVraboteni')is not null
begin
drop proc spFiltriranjeNaVraboteni
end
go
create proc spFiltriranjeNaVraboteni
@oddel nvarchar(20),
@ime nvarchar(20),
@prezime nvarchar(50),
@proekt nvarchar(50)
as
begin
select * 
from tblVraboten v 
inner join tblOddel o on o.id_oddel = v.id_oddel
inner join tblZadaca p on p.id_proekt = v.id_proekt
where (o.oddel = @oddel OR @oddel is null) 
	and (p.proekt = @proekt OR @proekt is null)
	and (v.ime = @ime OR @ime is null) 
	and (v.prezime = @prezime OR @prezime is null)
end