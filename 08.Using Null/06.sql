SELECT teacher.name,COALESCE(dept.name,'None') AS 'department name'
 FROM teacher LEFT JOIN dept
           ON (teacher.dept=dept.id)