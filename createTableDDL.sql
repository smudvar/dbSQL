 drop table if exists  dept cascade;
 create table DEPT
 (
   dept_cd varchar(10) PRIMARY key,
  dept_nm varchar(100),
  dept_block_nbr varchar(10),
  remote_ind char(1)
 );
 
 insert into dept(dept_cd, dept_nm, dept_block_nbr, remote_ind)
 values ('DAC2', 'Department of accouting 2', '20', 'N'),
 		('DHR01', 'Department of Human Resource 1', '01', 'N'),
        ('DIT3', 'Department of Information Technology 3', 'nan', 'Y'),
        ('DOF', 'Department of Finance', '7208', 'N'),
        ('DIV', 'Department of Innovation', '709', 'N');
  
drop table if EXISTS emp;
create table emp 
(
  emp_id integer
 PRIMARY key,
 dept_cd varchar(10),
 emp_nm varchar(20),
 emp_lnm varchar(20),
 emp_sex_cd varchar(1),
 emp_age_nbr integer,
 marital_ind char(1),
 constraint fk_dept_cd
  FOREIGN key (dept_cd)
   REFERENCES dept(dept_cd)
);
 
 insert into emp (emp_id, dept_cd, emp_nm, emp_lnm, emp_sex_cd, emp_age_nbr, marital_ind)
 values (1209, 'DAC2', 'Robert', 'Smith', 'M', 34, 'N'),
 (12010, 'DAC2', 'Laura', 'Lehman', 'F', 32, 'Y'),
 (139, 'DIT3', 'Samuel', 'Massengill', 'M', 67, 'Y'),
 (8937, 'DAC2', 'Bob', 'Hicks', 'M', 31, 'N');

