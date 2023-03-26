-- 10. Список курсов, которые определенному студенту читает определенный преподаватель:

SELECT d.name as discipline, s.fullname as student, t.fullname as teachar
from disciplines d 
join teachers t on t.id  = d.teacher_id 
JOIN grades g on d.id = g.discipline_id 
JOIN students s  on s.id = g.student_id 
WHERE s.id = 10 AND t.id = 3
GROUP BY d.id 
