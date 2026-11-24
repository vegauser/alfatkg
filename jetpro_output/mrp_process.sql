-- model: mrp_process
-- source: jetpro."工程マスター" (VegaGraph: 工程コード, 工程名, 工程指示)
-- process_type rule: 工程名 containing 板金 -> '板金'; containing 製缶 -> '製缶'; otherwise NULL.
SELECT ROW_NUMBER() OVER (ORDER BY "工程コード") AS display_order, "工程コード" AS code, "工程名" AS name,
  CASE WHEN "工程名" LIKE '%板金%' THEN '板金' WHEN "工程名" LIKE '%製缶%' THEN '製缶' ELSE NULL END AS process_type,
  0 AS work_center, "工程指示" AS process_remark
FROM jetpro."工程マスター";
