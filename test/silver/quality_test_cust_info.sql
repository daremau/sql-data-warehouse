 --cust_info TABLE
 --Check for nulls or duplicates in pk
 SELECT cst_id, COUNT(*)
 FROM silver.crm_cust_info
 GROUP BY cst_id
 HAVING COUNT(*) > 1 OR cst_id IS NULL;

--Check for unwanted spaces
SELECT cst_firstname
FROM silver.crm_cust_info
WHERE cst_firstname != TRIM(cst_firstname);

SELECT cst_lastname
FROM silver.crm_cust_info
WHERE cst_lastname != TRIM(cst_lastname);

SELECT DISTINCT cst_gndr
FROM silver.crm_cust_info

SELECT * FROM silver.crm_cust_info