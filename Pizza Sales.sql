create database pizza;
use pizza;
select * from pizza_sales;

select count(pizza_id) from pizza_sales; 
-- 48620           Total orders

select sum(quantity) from pizza_sales;
-- 49574           Total pizza sold

select sum(total_price) from pizza_sales;
-- 817860.05          Total sales

select sum(case when pizza_size = 'S' then quantity end) as S_pizza from pizza_sales;
-- 14403        No of small size pizas

select sum(case when pizza_size = 'M' then quantity end) as M_pizza from pizza_sales;
-- 15635      medium size pizas

select sum(case when pizza_size = 'L' then quantity end) as L_pizza from pizza_sales;
-- 18956      Large size pizas

select sum(case when pizza_size = 'XL' then quantity end) as XL_pizza from pizza_sales;
-- 552     XL size pizas

select sum(case when pizza_size = 'XXL' then quantity  end) as XXL_pizza from pizza_sales;
-- 28      XXL size pizzas

select sum(case when pizza_size = 'S' then total_price end) as S_pizza_sales from pizza_sales;
-- 178076.5         S size pizza price

select sum(case when pizza_size = 'M' then total_price end) as M_pizza_sales from pizza_sales;
-- 249382.25        M size pizza price

select sum(case when pizza_size = 'L' then total_price end) as L_pizza_sales from pizza_sales;
-- 375318.70        L size pizza price

select sum(case when pizza_size = 'XL' then total_price end) as XL_pizza_sales from pizza_sales;
-- 14076            XL size pizza price

select sum(case when pizza_size = 'XXL' then total_price end) as XXL_pizza_sales from pizza_sales;
-- 1006.60          XXL size pizza price

select distinct pizza_category from pizza_sales;     # Quarry to fetch distinct elemnts in a column

select sum(case when pizza_category = 'Classic' then quantity end) as Classic_pizzza from pizza_sales;
-- 14888                             # No of classic Pizzas

select sum(case when pizza_category = 'Veggie' then quantity end) as Veggie_pizzza from pizza_sales;
-- 11649                      # No of Veggie pizza 

select sum(case when pizza_category = 'Supreme' then quantity end) as Supreme_pizzza from pizza_sales;
-- 11987                      # No of Supreme pizza

select sum(case when pizza_category = 'Chicken' then quantity end) as Chicken_pizza from pizza_sales;
-- 11050                      # No of Chicken Pizza

select sum(case when pizza_category = 'Classic' then total_price end) as Classic_pizza_price from pizza_sales;
-- 220053.10

select sum(case when pizza_category = 'Veggie' then total_price end) as Veggie_pizza_price from pizza_sales;
-- 193690.45

select sum(case when pizza_category = 'Supreme' then total_price end) as Supreme_pizza_price from pizza_sales;
-- 208196.99

select sum(case when pizza_category = 'Chicken' then total_price end) as Chicken_pizza_price from pizza_sales;
-- 19591.5

select distinct pizza_name from pizza_sales;

select sum(case when pizza_size = 'S' and pizza_category = 'Classic' then quantity end) as S_pizza from pizza_sales;

select sum(case when pizza_size = 'S' then quantity and order_id end) as S_pizza from pizza_sales;

