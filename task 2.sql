create database HospitalDB;

use HospitalDB;

create table Patients(
					PatientID tinyint auto_increment primary key,
					FirstName varchar(255) not null,LastName varchar(255) not null,
                    DateOfBirth date,Gender varchar(255) not null,
                    Contact char(10) unique not null ,Address varchar(255) default "unknown"
                    );


create table Doctors(
					DoctorID tinyint auto_increment primary key,
                    FirstName varchar(255) not null,LastName varchar(255) not null,
                    Specialization varchar(255) not null ,Contact char(10) unique not null,
                    Email varchar(255) unique not null
                    );



describe patients;

select * from patients;
select * from doctors;



insert into Patients( FirstName,LastName,DateOfBirth,Gender,Contact,Address)
					values("sarvagna","k","2003-03-06","female","8885511915","Bngrl"),
                    ("RAGHAVA","T","2001-08-19","male","8008370049","NDL"),
                    ("vamsi naga jagadeesh","k","2003-04-06","male","6304371516","GNT");


insert into Patients (Firstname,Lastname,DateOfBirth,Gender,Contact,Address)
					values('priyanka','koti','1985-01-09','Female',9908533180,'Telangana'),
					('Ramesh','Dasari','2002-11-11','Male',7708533810,'Karnataka'),
					('Sagarika Reddy','Nallagangula','2000-10-25','Female',8888444895,'Andhra Pradesh');


insert into Doctors ( FirstName,LastName,Specialization,Contact,Email)
					values('Prasanna','k','Dentist',9998887845,'Prasannak2001@gmail.com'),
                          ('Raja Gopal','G','Neurology',8745654521,'RajaGopal123@gmail.com'),
                          ('Soma Sekhar Reddy','T','Cardiologist',7895465412,'Somasekhar@gmail.com'),
                          ('shiva prasad','C','Dermatology',8880004565,'Cshivaprasad888@gmail.com'),
                          ('Renuka','K','Oncologist','7589584562','Renuka456@gmail.com');

 
 Create table Appointments(
							AppointmentID tinyint auto_increment primary key,
                            PatientID tinyint,DoctorID tinyint,AppointmentDate date,
                            Diagnosis varchar(255),foreign key(PatientID) references Patients(PatientID),
                            foreign key(DoctorID) references Doctors(DoctorID)
                            );



-- Modifying the Tables with DDL Commands

alter table patients add column Email varchar(255);
alter table Doctors modify Contact varchar(255);
alter table Patients drop address;
alter table Doctors add constraint unique(email);
alter table appointments change Diagnosis MedicalDiagnosis varchar(255); 

-- Data Manipulation with DML Commands


select * from Appointments;


insert into Appointments (PatientID,DoctorID,AppointmentDate,MedicalDiagnosis) 
			values("4","2","2024-05-10", "migraine"),
					("6","5","2023-02-14","cancer");


update doctors set specialization = "GENERAL" where doctorid = 1;

delete from patients where patientid = 1;

select * from Appointments;
select * from patients;
select * from doctors;



describe doctors;