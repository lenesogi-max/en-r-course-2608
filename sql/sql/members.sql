-- 會員：同步等比縮小
--
-- 兩種人都要：抽樣後仍有訂單者，以及原本就沒有訂單的最後五百人。
-- 若保留全部十萬筆，活躍會員率會從 95% 掉到 9.5%，
-- 那是抽樣造成的假象，報表上的會員指標會失真。
SELECT member_id, member_name, email, phone, city, join_date
FROM   members
WHERE  member_id IN (SELECT DISTINCT member_id
                     FROM   orders
                     WHERE  order_id % 1000 < 100)
   OR  member_id > 99500
ORDER  BY member_id;
