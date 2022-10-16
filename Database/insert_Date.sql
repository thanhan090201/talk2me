
insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[is_Blocked])
values ('doctor1',N'Nguyễn Hoàng Huy','huy123@gmail.com',
'b8dc042d8cf7deefb0ec6a264c930b02','0397528860',1,'',2,1)

insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[is_Blocked])
values ('doctor2',N'Huỳnh Tam Hải','hai123@gmail.com',
'70a0f9894d2df18c2507d231a94caee8','0397528860',1,'',2,1)

insert into [dbo].[User]([user_Name],[name],[email],[password],[phoneNumber]
			,[gender],[avatar],[role],[is_Blocked])
values ('doctor3',N'Ngô Vân Linh','linh123@gmail.com',
'009b35b6a859335651d384702f545a04','0397528860',1,'',2,1)

--insert hospital

insert into [dbo].[Hospital]([name],[description_Hospital],[image_Url],
  [status_Hospital])
values (N'Bệnh Viện Chợ Rẫy','','',1)

insert into [dbo].[Hospital]([name],[description_Hospital],[image_Url],
  [status_Hospital])
values (N'Bệnh Viện Thủ Đức','','',1)

insert into [dbo].[Hospital]([name],[description_Hospital],[image_Url],
  [status_Hospital])
values (N'Bệnh Viện Đại Học Y Dược','','',1)
--insert doctor information

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[hospital_Id],[user_Id])
values ('','Ths.Bs','',1,1)

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[hospital_Id],[user_Id])
values ('','Ts.Bs','',2,2)

insert into [dbo].[DoctorInformation] ([description_Information],
[degree],[image_Degree_Url],[hospital_Id],[user_Id])
values ('','Ths','',3,3)

insert into Location([name],[description_Location],[image_URL],[status_Location])
values (N'Phòng Khám Tâm Lý KaZuO','','kazuo.jpg',1)

insert into Location([name],[description_Location],[image_URL],[status_Location])
values (N'Phòng Khám Tâm Lý Thực Hành','','thuchanh.jpg',1)

insert into Location([name],[description_Location],[image_URL],[status_Location])
values (N'Link Google Meet',N'Click Vào Để Gặp Bác Sĩ','',1)

insert into ScheduleType([location_Id],[name],
[description_Schedule_Type],[status_Schedule_Type])
values(1,N'Đặt Lịch Offline','',1)

insert into ScheduleType([location_Id],[name],
[description_Schedule_Type],[status_Schedule_Type])
values(2,N'Đặt Lịch Offline','',1)

insert into ScheduleType([location_Id],[name],
[description_Schedule_Type],[status_Schedule_Type])
values(3,N'Đặt Lịch Online','',1)

insert into Schedule([schedule_Type_Id],[title],[description_Schedule]
,[price],[status_Schedule])
values (1,N'Tư Vấn Tâm Lý (có thể bao gồm thuốc)','',200000,1)

insert into Schedule([schedule_Type_Id],[title],[description_Schedule]
,[price],[status_Schedule])
values (2,N'Trị Liệu ECT (có thể bao gồm thuốc)','',500000,1)

insert into Schedule([schedule_Type_Id],[title],[description_Schedule]
,[price],[status_Schedule])
values (3,N'Tư Vấn Tâm Lý ','',100000,1)

insert into Schedule([schedule_Type_Id],[title],[description_Schedule]
,[price],[status_Schedule])
values (3,N'Tư Vấn Tâm Lý (Nhanh) ','',500000,1)

/*insert into Booking ([begin_Time],[end_Time],[total_Amount],[status_Booking]
,[payment_Method],[schedule_Id],[doctor_Id],[patient_Id])
values(?,?,?,?,?,?,?,?)*/