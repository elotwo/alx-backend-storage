-- A script that ranks country origins of bands, ordered by the number of (non-unique) fans
CREATE TEMPORARY TABLE ranked_countries AS
SELECT 
    origin,
    SUM(fans) AS nb_fans
FROM 
    metal_bands
GROUP BY 
origin
ORDER BY 
    nb_fans DESC;
SELECT 
    origin,
    nb_fans
FROM 
    ranked_countries
ORDER BY 
    nb_fans DESC;
