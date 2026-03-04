WITH training AS (
  SELECT feature AS name, data_type
  FROM ML.FEATURE_INFO(
    MODEL `ext-bidv-eda-internal.test.kmeans_customer_segmentation`
  )
),
serving AS (
  SELECT column_name AS name, data_type
  FROM `ext-bidv-eda-internal.test.INFORMATION_SCHEMA.COLUMNS`
  WHERE table_name='customer_churn_demo'
)

SELECT
  t.name,
  t.data_type AS training_type,
  s.data_type AS serving_type,
  IF(t.data_type=s.data_type,'MATCH','MISMATCH') status
FROM training t
LEFT JOIN serving s USING(name);