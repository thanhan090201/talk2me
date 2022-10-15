
insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[create_Date_User],[is_Blocked])
values ('doctor1',N'Nguyễn Hoàng Huy','huy123@gmail.com',
'b8dc042d8cf7deefb0ec6a264c930b02','0397528860',1,'',2,
'2022-10-15 19:20:15',1)

insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[create_Date_User],[is_Blocked])
values ('doctor2',N'Huỳnh Tam Hải','hai123@gmail.com',
'70a0f9894d2df18c2507d231a94caee8','0397528860',1,'',2,
'2022-10-15 19:27:00',1)

insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[create_Date_User],[is_Blocked])
values ('doctor3',N'Ngô Vân Linh','linh123@gmail.com',
'009b35b6a859335651d384702f545a04','0397528860',1,'',2,
'2022-10-15 19:28:00',1)

--insert hospital

insert into [dbo].[Hospital]([name],[description_Hospital],[image_Url],
  [create_Date_Hospital],[status_Hospital])
values (N'Bệnh Viện Chợ Rẫy','','','2022-10-15 19:20:15',1)

--insert doctor information

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[independent],[hospital_Id],[user_Id])
values ('','Doctor','',1,1,1)

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[independent],[hospital_Id],[user_Id])
values ('','Doctor','',1,1,2)

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[independent],[hospital_Id],[user_Id])
values ('','Doctor','',1,1,3)