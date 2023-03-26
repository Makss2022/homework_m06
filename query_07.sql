-- 7. Найти оценки студентов в отдельной группе по определенному предмету:

SELECT gr.name as group_ , d.name as discipline , s.fullname as student , g.grade 
from students s 
join [groups] gr on gr.id = s.group_id 
JOIN grades g on s.id = g.student_id 
JOIN disciplines d on d.id = g.discipline_id 
WHERE gr.id = 1 AND d.id = 1
ORDER BY s.id 
