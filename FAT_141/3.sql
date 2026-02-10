SELECT *
FROM `ext-bidv-eda-internal.test.customer_churn_demo`
WHERE customer_id = 'C001'
  AND feature_timestamp <= TIMESTAMP('2027-02-15 00:00:00')
ORDER BY feature_timestamp DESC
LIMIT 1;