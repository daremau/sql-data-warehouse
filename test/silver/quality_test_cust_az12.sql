--Identify ou-of-range dates
SELECT DISTINCT
bdate
FROM silver.erp_cust_az12
WHERE bdate < '1900-01-01' OR bdate > GETDATE()

--Data standarization and consistency
SELECT DISTINCT gen
FROM silver.erp_cust_az12

SELECT * FROM silver.erp_cust_az12