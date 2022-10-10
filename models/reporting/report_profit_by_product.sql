select
prod_id,
prod_name,
category,
sub_category,
sum(order_profit) as profit
from {{ ref('stg_orders') }}
group by
prod_id,
prod_name,
category,
sub_category