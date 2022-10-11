
select 
--from raw orders
o.order_id, o.order_date, o.ship_date, o.ship_mode, o.order_selling_price, o.order_cost_price,
o.order_selling_price - o.order_cost_price as order_profit,
--from raw customers
c.cust_id, c.cust_name, c.segment, c.countrty,
--from raw products
p.prod_id, p.category, p.prod_name, p.sub_category
from {{ ref('raw_orders') }} as o
left join  {{ ref('raw_customers') }} as c
on o.cust_id = c.cust_id
left join  {{ ref('raw_products') }} as p 
on o.prod_id = p.prod_id