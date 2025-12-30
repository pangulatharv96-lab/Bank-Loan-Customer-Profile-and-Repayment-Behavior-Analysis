create database Banking_Customers_Loans;
use Banking_Customers_Loans;
select * from customer;
rename table customer to finance;
select * from finance;

#Find the total number of customers
select count(*) from finance;
#Find the total number of loan amount from finance table
select sum(loan_amount) from finance;

#Display all avtive loan status
select * from finance
where loan_status='Active';

#Display all Delayed loan status
select * from finance
where loan_status="Delayed";

#Display loan amount after from 2022-1-1
select * from finance
where disbursed_date > '2022-1-1';

#Find the total loan amount from branches 
select branch, sum(loan_amount) as total_loan_amount
from finance
group by branch;

#Find the average loan amount by branch
select branch, avg(loan_amount) as Average_loan_amount
from finance
group by branch;

#list of customer where credit score are above 650
select * from finance
where credit_score < '650';

#Total number of car loans
SELECT COUNT(*) AS count_car_loans
FROM finance
WHERE loan_type = 'car loan';

#loans with on time payment status
select  distinct customer_id
from finance
where payment_status = 'On-Time';

#loan with missed emi payments status
select distinct customer_id
from finance
where payment_status = 'Missed';

#Calculate average delay days per loan.
select customer_id, avg(days_delayed) as average_delayed_days
from finance
group by customer_id;

#Average Intrest rate according to branch
select branch, avg(interest_rate) as average_int_rate
from finance
group by branch;

#Find customers whose loan amount is above average
SELECT DISTINCT customer_id
FROM finance
WHERE loan_amount > (SELECT AVG(loan_amount) FROM finance);

#Identify branch with highest number of default loans
select branch 
from finance
where loan_status = 'Delayed'
group by branch
order by count(*) desc
limit 1;

#identify branch with highest number ontime payments
select branch
from finance
where payment_status = 'On-Time'
group by branch
order by count(*) desc
limit 1;

select customer_id,
case 
when credit_score < 500 then 'high risk'
when credit_score < 800 then 'mid risk'
when credit_score < 1000 then 'low risk'
else 'no risk'
end as risk
from finance;

#Find number of loans disbursed year-wise.
SELECT YEAR(disbursed_date) AS year, COUNT(*) AS total_loans
FROM finance
GROUP BY YEAR(disbursed_date);

#Rank customers based on total loan amount.
select customer_id,
sum(loan_amount) as total_loan_amount,
rank() over (order by sum(loan_amount) desc) as loan_rank
from finance
group by customer_id;

#Calculate running total of loan amount by date.
SELECT customer_id, disbursed_date, loan_amount,
SUM(loan_amount) OVER (ORDER BY disbursed_date) AS running_total
FROM finance;

#craete index on branch
CREATE INDEX index_branch ON finance (branch(50));
SHOW INDEX FROM finance;

#craete index on customer_id
CREATE INDEX index_customer_id ON finance (customer_id(50));
SHOW INDEX FROM finance;

#Identify duplicate customer records
SELECT customer_id, COUNT(*)
FROM finance
GROUP BY customer_id
HAVING COUNT(*) > 1;
#There is no duplicate record on customer_id

#Identify loans status have null values 
select loan_status
from finance
where loan_status is null;
#There is no record wuth null values


