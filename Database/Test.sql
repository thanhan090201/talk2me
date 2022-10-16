select * from [dbo].[User]

select * from Schedule
delete [dbo].[User] where [user_Id]=4

delete Hospital where [hospital_Id]=2

alter table [dbo].[ScheduleType]
update [dbo].[ScheduleType] set [name]=N'Đặt Lịch Offline' where [schedule_Type_Id]=1
alter table [dbo].[Booking]
alter column [payment_Method] int

DBCC CHECKIDENT('[dbo].[User]', RESEED, 0)

DBCC CHECKIDENT('[dbo].[Hospital]', RESEED, 0)

DBCC CHECKIDENT('[dbo].[DoctorInformation]', RESEED, 0)

select name,title,price
from Schedule d inner join ScheduleType t on
d.schedule_Type_Id=t.status_Schedule_Type
