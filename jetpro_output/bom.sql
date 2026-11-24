-- model: bom
-- source: jetpro."展開マスター" (VegaGraph: 図面番号, 部品子番号, 部品番号, 単位数)
-- child_name = 部品番号 (part number); level and cost mappings do not apply to this model.
SELECT "図面番号" AS bom_name, "図面番号" AS parent_name, "部品番号" AS child_name, "単位数" AS quantity
FROM jetpro."展開マスター";
