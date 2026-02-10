CREATE OR REPLACE TABLE `your_project.your_dataset.customer_churn_demo` (
  customer_id STRING,
  age INT64,
  gender STRING,
  tenure_months INT64,
  avg_monthly_spend FLOAT64,
  num_support_tickets INT64,
  contract_type STRING,
  payment_method STRING,
  churned INT64,
  feature_timestamp TIMESTAMP,
);


INSERT INTO `ext-bidv-eda-internal.test.customer_churn_demo` VALUES
('C001', 25, 'Female', 3, 29.9, 5, 'Month-to-month', 'E-wallet', 1, CURRENT_TIMESTAMP()),
('C002', 45, 'Male', 36, 89.5, 1, 'Two year', 'Credit card', 0, CURRENT_TIMESTAMP()),
('C003', 31, 'Female', 12, 49.0, 2, 'One year', 'Debit card', 0, CURRENT_TIMESTAMP()),
('C004', 22, 'Male', 1, 19.9, 7, 'Month-to-month', 'Bank transfer', 1, CURRENT_TIMESTAMP()),
('C005', 54, 'Female', 48, 99.0, 0, 'Two year', 'Credit card', 0, CURRENT_TIMESTAMP()),
('C006', 39, 'Male', 8, 39.9, 4, 'Month-to-month', 'E-wallet', 1, CURRENT_TIMESTAMP()),
('C007', 29, 'Female', 18, 59.0, 1, 'One year', 'Credit card', 0, CURRENT_TIMESTAMP()),
('C008', 61, 'Male', 60, 109.0, 0, 'Two year', 'Bank transfer', 0, CURRENT_TIMESTAMP());
