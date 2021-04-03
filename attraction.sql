SELECT a.attraction_name,c.country_name,b.city_name,d.category_name
FROM attraction AS a
LEFT OUTER JOIN city AS b
  ON a.city_id = b.city_id
  AND a.country_id = b.country_id
LEFT OUTER JOIN country c
  ON b.country_id = c.country_id
LEFT OUTER JOIN category d
  ON a.category_id = d.category_id;