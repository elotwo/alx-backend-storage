SELECT
   band_name AS band_name,
   COALESCE(split, 2022) - formed AS lifespan
FROM 
metal_bands
WHERE 
style = 'Glam rock'
AND formed <= 2022
ORDER BY 
lifespan DESC;
