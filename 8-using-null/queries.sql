SELECT name FROM teacher WHERE dept IS NULL

SELECT teacher.name, dept.name FROM teacher INNER JOIN dept ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name FROM teacher LEFT JOIN dept ON (teacher.dept=dept.id)

SELECT teacher.name, dept.name FROM teacher RIGHT JOIN dept ON (teacher.dept=dept.id)
