--prd_info TABLE
--Check for nulls or duplicates in pk
SELECT prd_id, COUNT(*)
FROM silver.crm_prd_info
GROUP BY prd_id
HAVING COUNT(*) > 1 OR prd_id IS NULL;

--Check for unwanted spaces
SELECT prd_nm
FROM silver.crm_prd_info
WHERE prd_nm != TRIM(prd_nm);

--Check for NULLs or negative numbers
SELECT prd_cost
FROM silver.crm_prd_info
WHERE prd_cost < 0 OR prd_cost IS NULL;

--Data standarization and consistency
SELECT DISTINCT prd_line
FROM silver.crm_prd_info

--Check for invalid date orders
SELECT *
FROM silver.crm_prd_info
WHERE prd_end_dt < prd_start_dt

SELECT * FROM silver.crm_prd_info