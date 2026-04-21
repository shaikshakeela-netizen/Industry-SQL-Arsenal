-- Transaction ( txn_id, cusomter_name,account_type, city, amount, txn_type, txn_date, status)

--1. Get all the transactions successful
      select * from transaction where status="Successful";

--2. Get transactions amount with greater than 50000
    select * from transactions where amount > 500000;

--3. Get Debit transactions  sorted  by highest to lowest
    select * from transactions where txn_type =" debit" order by amount desc;

--4. Get 5 Highest transactions 
    select * from transactions order by amount desc limit 5;

--5.Get lowest transactions
    select * from transactions order by amount limit 3;

--6.Get unique acouont type
    select distinct account_type from transactions;

--7.Get transactions from banglore where amount > 10k
    select cust_name, amount, city from transactions where city="Banglore" and amount >10000;

--8.Get credit transactions between 5k and 20k
    select cust_name, txn_type, amount from transactions where txn_type = "Credit" and amount >=5000 and amount <=20000;

--9. Get Failed transactions
    select * from transactions where status = "failed";

--10.Get trasactions sorted by date 
    select * from transactions order by txn_date desc ;

--11. get latest 10 trasactions
    select * from transaxtins order by txn_date desc limit 10;

--12.Get customers whose name starts with p 
    select * from transacctions where customer_name like "p%";

--13.Get unique cities where transactions happened
    select distinct city from transactions;

--14. Get transaxtions sorted by amount and date
    select Txn_id, amount from transactions order by amount desc txn_date desc;

--15.Get 5 transactions after skipping top 5 highest amounts
    select txn_id, amount from trasactions order by amount desc limit 5 offset 5;

--16. Get trasactions where customer name has atleast 2 'a'
    select customer_name from customers where customer_name like "%a%a%";

--17. Get transactions where amount ends with 000
    select * from transactions where amount like "%000";

--18. Get transactions in q2(apr-jun)
    select * from transactions where txn_date like "%-04-%" or txn_date like "%-05-%" or txn_date like "%-06-%";

--19.Get transactions ends and starts with same letter
        select * from transactions where customer_name like "a%a" or customer_name like "b%b" or customer_name like "c%c";

--20. Get top 4 highest debit transactions from hyderabad
    select * from transactions where city="hyderabad" and txn_type = "debit" order by amount desc limit 4;

--21. Get transactions status success and amount > 70k
    select * from transactions where status ="Success" and amount > 700000;

--22. Get distinct account type where failed transactions exist
    select distinct txn_type  from transactions where status = "failed";

--23. get Transactions of 20th day of any monthe 
    select * from transactions where txn_date like "%-20";

--23. Get transactions with amount between 10K-30K and not debit
    select * from transactions where amount <=10000 and amount >=30000 and txn_type != "debit";

--24. Get first 5 smallest trasactions after skipping 5
    select txn_id, amount  from transactions order by amount asc limit 5 offset 5;

--25.Get transactions where amount is a 4  digit number
    select txn_id , amount from transactions where amount 1000 and 9999;
