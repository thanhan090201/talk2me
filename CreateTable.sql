create database Talk2Me

create table [User](
userId int primary key identity(1,1),
userName nvarchar(50) not null,
[name] nvarchar(50) not null,
email nvarchar(50) not null,
[password] nvarchar(30) not null,
phoneNumber nvarchar(30) not null,
gender bit,
avatar nvarchar(100) null,
[role] int not null,
createDate DateTime not null,
updateDate Datetime not null,
isBlocked bit,
isGoogle bit
)

create table Hospital(
hospitalId int primary key identity(1,1),
name nvarchar(40) not null,
description nvarchar(50),
imageUrl nvarchar(100),
createDate Datetime not null,
updateDate Datetime not null,
status bit,
)

create table DoctorInformation(
doctorInformationId int identity(1,1),
description nvarchar(50),
degree nvarchar(40) not null,
imageDegreeUrl nvarchar(100),
independent bit not null,
hospitalId int identity(1,1) references Hospital(hospitalId),
userId int identity(1,1) references [User](userId)
)

create table [Location](
locationId int primary key identity(1,1),
name nvarchar(50) not null,
description nvarchar(50) not null,
imageURL nvarchar(50) not null,
createDate datetime not null,
status bit 
)

create table ScheduleType(
scheduleTypeId int primary key identity(1,1),
name nvarchar(50) not null,
description nvarchar(50),
status 
)

