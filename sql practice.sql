create database shoops;
use shoops;
create table customerss (customer_id INT(10)NOT NULL,customer_name VARCHAR(20)NOT NULL ,city VARCHAR(20)NOT NULL);
select * from customerss;
create database if not exists shoops;
use shoops;
Insert into customerss(customer_id,customer_name,city) values (101,'Maya','Kochi'),(102,'Sanu','TVM'),(103,'Ravi','kollam');
select * from customerss;
alter table customerss add (salary int(10)NOT NULL,age char(2)NOT NULL);
select * from customerss;
update customerss set salary=30000,age=25 where customer_id = 101;
update customerss set salary=35000,age=27 where customer_id = 102;
update customerss set salary=28000,age=29 where customer_id =103;
select * from customerss;
select customer_name from customerss;
insert into customerss(customer_id,customer_name,city,salary,age)values (104,'karn','ladak',43000,34),(105,'rishi','goa',37000,31),(106,'yadhav','pune','39000',32);
select * from customerss;
select customer_name from customerss;
#display cutomers from kochi?
select *from customerss where city='kochi';
# find customers with salary is greater than 35000?
select * from customerss where salary>=35000;
# display customers whose age is less than 30?
select * from customerss where age<30;
#sort customers salary in acsending order?
select * from customerss order by salary ASC;
# sort customers age in descending order?
select * from customerss order by age DESC;
## aggregate fuctions
# find total salary?
select sum(salary) as total_salary from customerss;
# find average salary?
select avg(salary) as average_salary from customerss;
# find maximum salary?
select max(salary) as maximum_salary from customerss;
# count total customers?
select count(customer_id) as total_count from customerss;
## group by practice
#count customers in each city?
select city ,count(*) as total from customerss group by city;
#find average salary by city?
select city ,avg(salary) as avg_city_salary from customerss group by city;
#find highest salary in each city?
select city ,max(salary) as max_city_sal from customerss group by city;
## Like operator
#find customer name whose name start with y?
select * from customerss where customer_name like 'y%';
#find customer name where name end with a?
select * from customerss where customer_name like '%a';
## And / Or Condition
#find customer from TVM greater than or equal to 35000?
select * from customerss where city='TVM' and salary>=35000;
# Find customers from Kochi or Calicut.
select * from customerss where city ='Kochi'or city='calicut';

# Find second highest salary?
select max(salary) from customerss where salary < (select max(salary) from customerss);

#top 3 huighest paid customers
select * from customerss order by salary desc limit 3;
#Increase salary by 10% for all customers?

update customerss set salary = salary *1.10;
select * from customerss;
#Delete customers whose salary is less than 30000?
delete from customerss where salary <30000; 
#Find customers between age 25 and 35?
select * from customerss where age between 25 and 30;
# find unique city?
select distinct city from customerss;
#create second table
create table orderss (order_id int(10) not null,customer_id int(10)not null,amount int(10)not null);
insert into orderss(order_id,customer_id,amount)values(2066,104,2000),(2067,103,3500),(2056,101,4500),(2075,102,1750),(2068,106,2050),(2070,105,3110);
select * from orderss;
