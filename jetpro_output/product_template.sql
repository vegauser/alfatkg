-- model: product_template
-- source: jetpro."製品マスター" (VegaGraph: 図面番号, 品名, 機種, 単価, 基準単価)
-- level = 機種; cost = 基準単価
SELECT ROW_NUMBER() OVER (ORDER BY "図面番号") AS sequence, "図面番号" AS product_number, "品名" AS name, "機種" AS level, "単価" AS sales_price, "基準単価" AS cost, 0 AS quantity_on_hand, 0 AS forecasted_quantity, 'Units' AS unit_of_measure, CAST(NULL AS VARCHAR) AS activity_exception_decoration
FROM jetpro."製品マスター";
