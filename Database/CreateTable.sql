--create database Talk2Me

create table [User](
[user_Id] int primary key identity(1,1),
[user_Name] nvarchar(500) not null,
[name] nvarchar(50) not null,
email nvarchar(50) not null,
[password] varchar(200) not null,
phoneNumber nvarchar(20) not null,
gender bit,
avatar nvarchar(100) null,
[role] int not null,
create_Date_User DateTime not null,
is_Blocked bit
)

create table Hospital(
hospital_Id int primary key identity(1,1),
name nvarchar(40) not null,
description_Hospital nvarchar(200),
image_Url nvarchar(100),
create_Date_Hospital Datetime not null,
status_Hospital bit,
)

create table DoctorInformation(
doctor_Information_Id int identity(1,1) primary key,
description_Information nvarchar(200),
degree nvarchar(40) not null,
image_Degree_Url nvarchar(100),
independent bit not null,
hospital_Id int references Hospital(hospital_Id),
[user_Id] int unique references [User]([user_Id])
)

create table [Location](
location_Id int primary key identity(1,1),
name nvarchar(50) not null,
description_Location nvarchar(200) not null,
image_URL nvarchar(50) not null,
create_Date_Location datetime not null,
status_Location bit 
)

create table ScheduleType(
schedule_Type_Id int primary key identity(1,1),
location_Id int unique references [Location](location_Id),
name nvarchar(50) not null,
description_Schedule_Type nvarchar(200),
status_Schedule_Type bit,
create_Date_Schedule_Type Datetime not null
)

create table Schedule(
schedule_Id int primary key identity(1,1),
schedule_Type_Id int references ScheduleType(schedule_Type_Id),
title nvarchar(100) not null,
description_Schedule nvarchar(200),
create_Date_Schedule datetime not null,
price float,
status_Schedule bit
)
create table Booking(
booking_Id int primary key identity(1,1),
begin_Time datetime not null,
end_Time time,
total_Amount float not null,
status_Booking bit,
payment_Method float,
create_Date_Booking datetime,
schedule_Id int references Schedule(schedule_Id),
doctor_Id int references [User]([user_Id]),
patient_Id int references [User]([user_Id])
)
create table Nofication(
nofication_Id int primary key identity(1,1),
description_Nofication nvarchar(200),
receiver_Id int references [User]([user_Id]),
booking_Id int references Booking(booking_Id),
create_Date_Nofication datetime,
status_Nofication bit
)
