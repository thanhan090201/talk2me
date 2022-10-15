select *
from [dbo].[User]

delete [dbo].[User] where [user_Id]=4

delete Hospital where [hospital_Id]=2

alter table [dbo].[Hospital]
alter column [update_Date_Hospital] datetime null

DBCC CHECKIDENT('[dbo].[User]', RESEED, 0)

DBCC CHECKIDENT('[dbo].[Hospital]', RESEED, 0)

DBCC CHECKIDENT('[dbo].[DoctorInformation]', RESEED, 0)