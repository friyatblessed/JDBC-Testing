-- give me all information  who is getting max  salary

-- max salary
select max(salary) from EMPLOYEES;  --24 K

-- if we know max salary can we find who is getting
select *  from EMPLOYEES
where  salary =24000;   --> it is HARCODED.

-- if the Steven King salary changes we cant find person who is getting max salary

-- SOLUTION --> make it dynamic
select *  from EMPLOYEES
where  salary=(select max(salary) from EMPLOYEES);



-- give me all information  who is getting min salary

-- min salary
select min(salary*12) from EMPLOYEES;  --2100

-- if we know min  salary can we find who is getting
select *  from EMPLOYEES
where  salary =2100;


-- SOLUTION --> make it dynamic
select *  from EMPLOYEES
where  salary=(select min(salary) from EMPLOYEES);

--display all information who is getting second highest salary?
        --find max salary
select max(salary) from EMPLOYEES;--24K

        --second hifhst
select max(salary) from EMPLOYEES
where SALARY < 24000; ---> 17K

-- find second highest dynamicly
select max(salary) from EMPLOYEES
where salary < (select max(salary) from EMPLOYEES); --17 K

-- find me who is getting
select * from EMPLOYEES
where salary=17000;   --> still hardcoded

-- make it dynamic
select * from EMPLOYEES
where salary=(select max(salary) from EMPLOYEES
              where salary < (select max(salary) from EMPLOYEES));

--dispaly all information who is getting more than average
    ---find avg salary
select avg(salary) from EMPLOYEES;

--display who is getting over avg
select * from EMPLOYEES
where salary > 6462;

---SOLUTION --> make it danamic
select * from EMPLOYEES
where salary > (select avg(salry) from employees)

--HOMEWORK --> display