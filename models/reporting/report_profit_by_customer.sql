select
cust_id,
cust_name,
segment,
countrty,
sum(order_profit) as profit
from {{ ref('stg_orders') }}
group by
cust_id,
cust_name,
segment,
countrty