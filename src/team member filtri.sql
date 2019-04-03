if OBJECT_ID('spFiltriranjeNaTeamMember')is not null
begin
drop proc spFiltriranjeNaTeamMember
end
go
create proc spFiltriranjeNaTeamMember
@naslov nvarchar(20),
@opis nvarchar(15),
@proekt nvarchar(50)
as
begin
select * 
from tblZadaca z 
inner join tblStatus s on s.id_status = z.id_status
where (s.opis = @opis OR @opis is null) 
	and (z.proekt = @proekt OR @proekt is null)
	and (z.naslov = @naslov OR @naslov is null) 
end