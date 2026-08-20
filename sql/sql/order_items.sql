-- 訂單明細：只取抽樣訂單的明細
SELECT item_id, order_id, product_id, quantity, unit_price
FROM   order_items
WHERE  order_id % 1000 < 100
ORDER  BY item_id;
