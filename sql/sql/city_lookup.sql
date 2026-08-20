-- 城市代號對照表
--
-- shop 沒有這張表。原始資料的城市刻意維持代號形式，
-- 但報表上標著「城市A」不具說服力，因此以字面值組出對照表，
-- 在 R 中以 left_join 接上。市名為真實地名，不對應任何實際資料。
SELECT '城市A' AS city, '台北市' AS city_name
UNION ALL SELECT '城市B', '新北市'
UNION ALL SELECT '城市C', '桃園市'
UNION ALL SELECT '城市D', '台中市'
UNION ALL SELECT '城市E', '台南市'
UNION ALL SELECT '城市F', '高雄市'
UNION ALL SELECT '城市G', '新竹市'
UNION ALL SELECT '城市H', '基隆市';
