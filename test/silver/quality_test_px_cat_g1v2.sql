--Check for unwanted spaces
SELECT * FROM silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat) OR subcat != TRiM(subcat) OR maintenance != TRiM(maintenance)

--Data standarization and consistency
SELECT DISTINCT
cat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT
subcat
FROM silver.erp_px_cat_g1v2

SELECT DISTINCT
maintenance
FROM silver.erp_px_cat_g1v2