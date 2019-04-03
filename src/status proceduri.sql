IF OBJECT_ID('spAddStatus')is not null
begin
drop proc spAddStatus
end
go
create proc spAddStatus
@id_status int,
@opis nvarchar(25)
as
begin
insert into tblStatus(
id_status,
opis)
values(
@id_status,
@opis)
set @id_status=SCOPE_IDENTITY()
select
opis=@opis
from tblstatus
where id_status=@id_status
end
/*ova e procedura za pisuvanje pod vo status*/
IF OBJECT_ID('spGetStatus')is not null
begin
drop proc spGetStatus
end
go
create proc spGetStatus
@id_status int
as
begin
select*
from tblstatus
where id_status=@id_status
end
go
/*ova e za citanje pod vo status*/
IF OBJECT_ID('spUpdateStatus')is not null
begin
drop proc spUpdateStatus
end
go
create proc spUpdateStatus
@id_status int,
@opis nvarchar(25)
as
begin
update tblstatus
set opis=@opis
where id_status=@id_status
end
/*ova e procedura za izmena pod vo status*/
if  OBJECT_ID('spDeleteStatus') is not null
begin
drop proc spDeleteStatus
end
go
create proc spDeleteStatus
@id_status int
as
begin
delete
from tblstatus
where id_status=@id_status
end
go
/*ova e procedura za brisenje pod vo status