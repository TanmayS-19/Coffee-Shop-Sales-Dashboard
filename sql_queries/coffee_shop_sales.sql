describe coffee_shop_sales;
select * from coffee_shop_sales;

alter table coffee_shop_sales
modify transaction_time time;

select extract(second from transaction_time)
from coffee_shop_sales;

alter table coffee_shop_sales
change column ï»¿transaction_id transaction_id int;


 
select month(transaction_date) as order_month, round(sum(unit_price*transaction_qty)) as total_sales
from coffee_shop_sales
group by month(transaction_date)
having order_month = 5;


with cte as(
select month(transaction_date) as order_month, round(sum(unit_price*transaction_qty)) as total_sales
from coffee_shop_sales
group by month(transaction_date)),
diff_table as (
select cte.*,
lag(cte.total_sales) over() as prev_month_sales,
cte.total_sales - lag(cte.total_sales) over() as mom_sales_diff
from cte)
select d.*,
round((d.mom_sales_diff/d.prev_month_sales)*100,2) as mom_increase_percentage
from diff_table d;

select month(transaction_date) as transaction_month, count(transaction_id) as total_transactions
from coffee_shop_sales
group by transaction_month;

with cte as(
select month(transaction_date) as transaction_month, count(transaction_id) as total_transactions
from coffee_shop_sales
group by transaction_month),
order_diff_table as(
select c.*,
lag(c.total_transactions) over() as prev_month_order_count,
total_transactions - lag(c.total_transactions) over() as diff_prev_month_order_count
from cte c)
select o.*,
round((diff_prev_month_order_count/prev_month_order_count)*100,2) as mom_percent_inc
from order_diff_table o;








select month(transaction_date) as transaction_month, sum(transaction_qty) as total_orders
from coffee_shop_sales
group by transaction_month;

with cte as(
select month(transaction_date) as transaction_month, sum(transaction_qty) as total_orders
from coffee_shop_sales
group by transaction_month),
next_month_table as(
select c.*,
lag(c.total_orders)over() as prev_month_orders,
c.total_orders-lag(c.total_orders)over() as diff_orders
from cte c)
select n.*,
round((n.diff_orders/n.prev_month_orders)*100,2) as mom_percent_increase
from next_month_table n;

select * from coffee_shop_sales;


select transaction_date,
count(transaction_id) as total_orders,
sum(transaction_qty) as total_quantity_sold,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
group by transaction_date
having transaction_date = '2023-05-11';


select transaction_id
from coffee_shop_sales
where dayofweek(transaction_date) in (1,7);




select concat(round(sum(unit_price*transaction_qty)/1000,2),'K') as total_sales,
case when dayofweek(transaction_date) in (1,7) then 'Weekends'
else 'Weekdays'
end as day_of_week
from coffee_shop_sales
where month(transaction_date) =5
group by day_of_week;


select store_location,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
where month(transaction_date) =5
group by store_location
order by total_sales desc;

with cte as(
select transaction_date,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
where month(transaction_date)=5
group by transaction_date
order by transaction_date),
avg_sales_table as(
select cte.*,
round(avg(cte.total_sales) over(),2)as avg_sales
from cte)
select a.*,
case when (a.total_sales-a.avg_sales)>=0 then 'Above Average'
else 'Below Average' end as rating
from avg_sales_table a
;


select * from coffee_shop_sales;
select product_category,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
where month(transaction_date)=5
group by product_category
order by total_sales desc;

with cte as(
select product_detail,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
group by product_detail
order by total_sales desc
)
select * from(
select
dense_rank() over(order by total_sales desc) as ranked, 
cte.*
from cte)x
where x.ranked<=10;



select hour(transaction_time),
count(transaction_id) as total_orders,
sum(transaction_qty) as total_quantity_sold,
round(sum(unit_price*transaction_qty),2) as total_sales
from coffee_shop_sales
where month(transaction_date)=5
group by hour(transaction_time)
order by total_sales desc;



