create database employee_project;

use employee_project;

select *from data_science_team;

select *from emp_record_table;

select *from proj_table;

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT from emp_record_table ;

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from emp_record_table where EMP_RATING < 2;

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from emp_record_table where EMP_RATING > 4;

select EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT, EMP_RATING  from emp_record_table where EMP_RATING between 2 and 4;

select concat(FIRST_NAME , ' ' , LAST_NAME) as NAME ,DEPT from emp_record_table where DEPT='FINANCE';

Select employee.emp_id  , concat(employee.first_name , ' ' , employee.last_name ) as employee_Name , manager.manager_id, 
concat(manager.first_name , ' ' , manager.last_name) as Manager_Name, manager.Role as role from emp_record_table employee 
join emp_record_table manager on employee.Manager_ID = manager.emp_ID;

select  EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT as Department from emp_record_table where dept ='HEALTHCARE'
union 
select  EMP_ID, FIRST_NAME, LAST_NAME, GENDER, DEPT as Department from emp_record_table where dept ='FINANCE';