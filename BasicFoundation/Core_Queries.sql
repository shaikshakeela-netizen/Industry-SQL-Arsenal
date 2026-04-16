'''
    Table name " employees"
id | name | department | salary | city | experience  | joining date
'''

--1.Get all employees from  IT department
    select * from  employees where department ="IT";

--2.Find employees with salary greater than 500000
        select * from employees where salary > 500000;

--3.Get employees from hyderabad sorted by salary (high to low)
        select * from employees where city = "hyderabad" order by salary desc;

-- 4. Top 5 highest paid
        select name , salary from employees order by salary desc limit 5;

--5.Get lowest three salary paid
        select name, salary from  employees order by salary  limit 3;

--6.find the unique departments in the table
        select distinct department from employees;

--7.Get the employees with experience more than 3 years
        select  * from employees where experience > 3;

--8.Get the employees with salary range between the 30k and 70k
        select name, salary from employee where salary >=300000 and salary <=700000;

--9.Get employees where department not working as HR
        select name, department from employees where department != "HR";

--10.Get employees sorted by experience 
        select name, experience, department from employees order by experience desc;

--11.Get 10 recent joiners
        select name, joining_date from employees order by joining_date desc limit 10;

--12. Get employees from banglore with salary > 40K
        seelct name, city, salary from employees where city ="Banglore" and salary > 400000;

--13. Get unique cities where employees are located
        select distinct city from employees;

--14.Get employees sorted by salary and experience
        select name, salary, experience from employees order by salary desc, experience desc;

--15.Get 2nd to 6th highest paid employees (pagination concept)
        select name, salary from employees order by salary desc limit 5 offset 1;


--16. Get employees whose name starts with A
        select name from employees where name like 'A%';

--17.Get employees whose names ends with A
        select name from employees where name like '%n';

--18.Find the employees working in either It or HR
        select name, department from employees where department ="IT" or department= "HR";

--19.Get employees not from hyderabad
        select name, city from employees where city!="Hyderabad";

--20.Get employees who joined before 2022
        select name, joining_date from employees where joining_date < '2022-01-01';

--21.Get top 3 most experienced employees
        select name, experience from employees order by experience desc limit 3;

--22.Get employee whose name col contains with 'ra'
        select name from employee where name like 'ra';

--23.Get first 5 employees skipping first 2 (pagination)
        select name, salary from employees order by salary desc limit 5 offset 2;

--24.Get employees whose name has exactly 5 characters
        select name from employees where name like '-----';

--25.Get employees whose name starts with s and ends with a
        select name from employees where name like 'S%a';

--26.Get employee from chennai or banglore sorted by salary
        select name, city, salary from employee where city="Chennai" or city="Banglore" order by salary desc;

--27.Get employee whose joining year is 2023
        select name, salary , joining_date from employees where joining_date >='2023-01-01' and joining_date<='2023-12-31';

--28.Get Employees whose name does not contain a
        select name from employees where name not like '%a%';

--29.Get the employees latest experience first and then by lowest salary
        select name, experience, salary from employees order by experience desc, salary asc;

--30. Get distnict combinations of city and department
        select distinct city, department from employees ;

--31. Get emploees whose joined after 2022 and having salary > 60K
        select name, joining_date, salary from employee where joining_date >= '2022-01-01' and salary > 600000;

--32.Get employee whose name has second letter 'e' 
        select name from employees where name like '_e%';

--33.Get employees sorted by oldest joining date
        select name, joining_date from employees order by joining_date asc;

--34.Get employees hired in last 6 months
        select name, joining_date from employees where joining_date >= '2025-06-01' order by joining_date desc;

--35.Get employees whose name starts with only one 'a'
        select name from employee from employees where name like "%a%" and name not like "%aa%";

--36.Get employees whose joining month is jan ( any year)
        select name, joining_date from employees where joining_date like '%-01-%';

--37.Get employees whose name does not start with vowel
        select name from employee where name not like "a%"
                                    and name not like "e%"
                                    and name not like "i%"
                                    and name not like "o%"
                                    and name not like "u%"

--38.



