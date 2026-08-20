-- 訂單：抽樣至十分之一
-- order_id 除以 1000 的餘數小於 100，即每一千筆取前一百筆
SELECT order_id, member_id, order_date, status, total_amount
FROM   orders
WHERE  order_id % 1000 < 100
ORDER  BY order_id;
