CREATE OR REPLACE MODEL `ext-bidv-eda-internal.test.automl_churn_model`
OPTIONS(
  MODEL_TYPE = 'AUTOML_CLASSIFIER',
  INPUT_LABEL_COLS = ['churned'],
  BUDGET_HOURS = 1.0
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
