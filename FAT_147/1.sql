CREATE OR REPLACE MODEL `ext-bidv-eda-internal.test.xgb_churn_model`
OPTIONS(
  model_type = 'BOOSTED_TREE_CLASSIFIER',
  input_label_cols = ['churned'],
  max_iterations = 5,
  max_tree_depth = 2,
  subsample = 0.8
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
