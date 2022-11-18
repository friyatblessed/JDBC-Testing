select * from employees;

/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/
---CREATE TABLE -----
create table scrumteam(

                          empid Integer PRIMARY KEY,
                          firstname varchar(30) not null,
                          jobtitle varchar(20) not null,
                          age integer,
                          salary integer

);
select * from scrumteam;

/*
INSERT INTO tableName (column1, column2,…)
VALUES (value1, value2 … );
*/

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (1,'Mike','Tester',34,120000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (2,'John','Tester',32,130000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (3,'John','Developer',37,160000);

insert into scrumteam(empid, firstname, jobtitle, age, salary)
values (4,'Dembe','Developer',42,200000);

--to push changes into database we need to use commit or commit work
commit;

--so if we didn't use commit isn't going to database?


--what means data
/*
 UPDATE table_name
 */
select * from scrumteam;

UPDATE scrumteam
SET salary=salary+5000;

UPDATE scrumteam
SET salary=salary+20000
WHERE JOBTITLE='Tester';

UPDATE scrumteam
SET salary=salary+10000
WHERE age>40;

commit;


DELETE from scrumteam
where empid=1;

select * from scrumteam;

DELETE from scrumteam
where jobtitle='Developer' and age>40;

commit;

--AlTER

--ADD NEW COLUMN
ALTER TABLE scrumteam add gender varchar(10);

select * from scrumteam;
--update empID=2 gender as Male
update scrumteam
set gender='Male'
where empid=2;

--check(gender in('MALE','FEMALE')

-- RENAME THE COLUMN
ALTER TABLE scrumteam rename column salary to annual_salary;

-- DROP COLUMN
ALTER TABLE scrumteam drop column gender;
select * from scrumteam;

-- RENAME TO ---> CHANGE TABLE NAME
ALTER TABLE scrumteam rename to agileteam;
select * from agileteam;
commit;