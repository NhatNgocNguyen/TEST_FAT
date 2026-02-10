CREATE OR REPLACE MODEL `ext-bidv-eda-internal.test.rf_churn_model`
OPTIONS(
  model_type = 'RANDOM_FOREST_CLASSIFIER',
  num_parallel_tree = 2,
  max_tree_depth = 1,
  input_label_cols = ['churned'],
  enable_global_explain= true
) AS
SELECT
  age,
  gender,
  tenure_months,
  avg_monthly_spend,
  num_support_tickets,
  contract_type,
  payment_method,
  churned
FROM `ext-bidv-eda-internal.test.customer_churn_demo`;