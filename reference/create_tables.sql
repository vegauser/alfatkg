-- Reference only: target table definitions for the jetpro_output models.
-- Column types for source-derived fields come from VegaGraph metadata of the jetpro source tables.
-- Literal and ROW_NUMBER columns are typed by the SELECT expressions.
CREATE TABLE jetpro.bom (
  bom_name VARCHAR,
  parent_name VARCHAR,
  child_name VARCHAR,
  quantity BIGINT
);

CREATE TABLE jetpro.product_template (
  sequence BIGINT,
  product_number VARCHAR,
  name VARCHAR,
  level VARCHAR,
  sales_price DOUBLE,
  cost DOUBLE,
  quantity_on_hand BIGINT,
  forecasted_quantity BIGINT,
  unit_of_measure VARCHAR,
  activity_exception_decoration VARCHAR
);

CREATE TABLE jetpro.mrp_process (
  display_order BIGINT,
  code VARCHAR,
  name VARCHAR,
  process_type VARCHAR,
  work_center BIGINT,
  process_remark VARCHAR
);
