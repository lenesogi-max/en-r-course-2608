-- 商品：全部匯出
SELECT product_id, product_name, category_id, price, is_active
FROM   products
ORDER  BY product_id;
