SELECT * FROM sales.transactions;

SELECT * FROM sales.transactions where sales_amount<=0;
SELECT count(*) FROM sales.transactions where sales_amount<=0;

select count(*) from sales.transactions;

SELECT * FROM sales.transactions where currency="USD";

SELECT * FROM sales.transactions where market_code="Mark001";

SELECT count(*) FROM sales.transactions where market_code="Mark001";

SELECT distinct(sales.transactions.currency) from sales.transactions;
SELECT count(*) from transactions where transactions.currency="INR\r";
SELECT count(*) from transactions where transactions.currency="INR";
SELECT count(*) from transactions where transactions.currency="USD" OR "USD\r";
SELECT * from transactions where transactions.currency="USD" OR transactions.currency="USD\r";


#revenue in 2020
select sum(transactions.sales_amount) from transactions inner join date on 
transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or 
transactions.currency="USD\r" ;

select sum(transactions.sales_amount) from transactions inner join date on 
transactions.order_date=date.date where date.year=2020 and date.month_name="January" 
and (transactions.currency="INR\r" or 
transactions.currency="USD\r" );

select sum(transactions.sales_amount) from transactions inner join date on 
transactions.order_date=date.date where date.year=2020 and date.month_name="January" 
and transactions.market_code="mark001";
