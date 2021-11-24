SELECT d.name,COUNT(t.name)
 FROM teacher AS t
RIGHT JOIN dept as d ON (t.dept=d.id)
GROUP BY d.name