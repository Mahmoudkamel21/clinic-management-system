--create database clinic ;
use clinic ;
create table patients (
patient_ID int primary key , 
patient_Name varchar(255) ,
patient_address varchar(255) ,
patient_type varchar(255) ,
patient_age int);
create table treatments(
treat_ID int primary key , 
treat_type varchar(255) );
create table medicines (
med_ID int primary key , 
med_name varchar(255) ,
med_quantity int,
meddescription varchar(255),
medexpiry_date int,
requsted_date int );
create table equipments (
equip_ID int primary key , 
equip_Name varchar(255) ,
requsted_date int );
create table checkup (
check_ID int primary key ,
checkcomplains varchar(255),
checkfinding varchar(255), 
check_Date int ,
check_quantity int,
med_ID int foreign key references medicines (med_ID) ,
equip_ID int foreign key references equipment (equip_ID) ,
patient_ID int foreign key references patient (patient_ID) ,
treat_ID int foreign key references treatments (treat_ID) ,
);
use clinic ;
insert into patients 
values (100 , 'emad' , 'aswan' , 'sick',16);
insert into treatments
values (200 , 'panadol');
insert into medicines (med_ID , med_Name , med_quantity ,medexpiry_date,meddescription_date,requsted_date)
values (300, 'flagel' , 3 , 20/12/2020,Treats pain,20/1/2021);
insert into equipment (equip_ID , equip_name,requested_date)
values (400 , 'stethoscope',4/5/2020);
insert into checkup (check_ID , checkcomplains, checkfinding, check_Date, check_quantity,med_ID,equip_ID ,patient_ID,treat_ID) 
values (500 , 'headache','in head',15/6/2020,5,300,400,100,200);

delete from patients where patient_ID = 600 ;
delete from treatments where treat_ID = 100 ;
delete from medicines where med_date = 19/1/2019 ;
delete from equipment where equipment_name = 'statehscope' ;
delete from checkup where check_Date = 5/9/2020 ;
update patients
set patient_address = 'cairo'
where patient_ID = 100 ;
update treatments
set treat_type = 'flagel'
where treat_type = 'panadol' ;
update medicines
set med_Name = 'colona'
where med_Name = 'flagel' ;
update equipments
set equip_name = 'Thermometer'
where equip_ID = 400 ;
update checkup
set check_Date = 30/8/2020
where check_ID = 500 ;
select med_id , treat_Name 
from medicines 
inner join treatments on treatnents.treat_ID = treatments.treat_ID ; 
select treat_address , patient_address
from treatments 
left join patients on treatments.patient_ID = patients.patient_ID ;
select med_ID , check_Name
from medicines 
right join checkup on checkup.med_ID = medicines.med_ID ;
select check_Date , equip_Name 
from checkupp
full join equipments on checkup.equip_ID =  equipments.equip_ID ;
select treat_type , patient_name 
from treatments , patients 
where treatments.patient_ID = patients.patient_ID ;
select count(check_quantity) , check_ID
from checkup 
group by check_ID ; 
select count(treat_ID) , treat_Name
from treatments
group by treat_Name ; 
select equip_name
from equipment 
where equip_ID = (select equip_ID from checkup where equip_ID =200) ; 
select equip_Name , requested_date
from equipments 
where requested_date > (select count(check_ID) from checkup ) ; 
select h_address 
from hotels 
where treat_type = (select patient_address from patients where patient_address = 'cairo') ; 
use clinic ;
select med_name
from medicines;
select * 
from treatments ;
select distinct check_date 
from checkup ;
SELECT TOP 10 * 
FROM patients ;
SELECT TOP 10 PERCENT equip_Name 
FROM equipments; 
SELECT check_ID 
FROM checkup
ORDER BY check_date;
SELECT check_ID 
FROM checkup
ORDER BY quantity desc ;
SELECT  treat_Name
FROM treatments
ORDER BY treat_type ASC;
SELECT MIN(quantity)
FROM checkup ;
select MAX(quantity)
from checkup ; 
SELECT AVG(check_date)
FROM checkup ;
SELECT SUM(check_date)
FROM checkup ;
SELECT *
FROM treatments
WHERE treat_ID = 100 ;
SELECT equip_Name
FROM equipments
WHERE equip_Name LIKE '%t,s%';
SELECT equip_Name
FROM equipments
WHERE equip_Name IN ('thermometer', 'statehscope');
SELECT equip_name , equip_type
FROM equipments
WHERE equip_Name IN ('thermometer', 'statescope') AND equip_Name LIKE '%t%' ;
SELECT equip_name , equip_type
FROM equipments
WHERE equip_Name IN ('thermometer', 'statescope') or equip_Name LIKE '%t%' ;
SELECT mes_date
FROM medicines
WHERE NOT med_date = 5/5/2010;
SELECT patient_Name
FROM patients
WHERE patient_Name IN ('amrir', 'ahmed');
SELECT check_quantity
FROM checkup
WHERE Price BETWEEN 5 AND 50;
SELECT patient_Name
FROM patients
WHERE patient_Name LIKE '%a%';





