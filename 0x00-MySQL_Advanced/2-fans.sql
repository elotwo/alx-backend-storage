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
    nb_fans,
    @rank := @rank + 1 AS rank
    (SELECT @rank := 0) r 
FROM 
    ranked_countries;
ORDER BY 
    nb_fans DESC;
