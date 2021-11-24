SELECT 
  firstbus.busnumber AS 'num', 
  firstbus.company, 
  secondbus.transfer AS 'name', 
  secondbus.busnumber AS 'num', 
  secondbus.company 
FROM (
  SELECT r1.num AS 'busnumber', 
  r1.company AS 'company', 
  r2.stop AS 'stopp' 
  FROM route r1 
  JOIN route r2 ON (r1.num = r2.num AND r1.company = r2.company) 
  JOIN stops s1 ON s1.id = r1.stop
  JOIN stops s2 ON s2.id = r2.stop
  WHERE s1.name = 'Craiglockhart'
  ) firstbus
  JOIN
  (
  SELECT s1.name AS 'transfer', 
  r1.num AS 'busnumber', 
  r1.company AS 'company', 
  r1.stop AS 'stopp', 
  r1.pos AS 'pos' 
  FROM route r1 JOIN route r2 ON (r1.num = r2.num AND r1.company = r2.company) 
  JOIN stops s1 ON s1.id = r1.stop
  JOIN stops s2 ON s2.id = r2.stop
  WHERE s2.name = 'Lochend'
  ) secondbus
  ON firstbus.stopp = secondbus.stopp
ORDER BY firstbus.busnumber, name, 4;