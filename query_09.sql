-- 9. Найти список курсов, которые посещает определенный студент:

SELECT s.fullname as student, d.name as discipline
from students s 
left join grades g  on s.id = g.student_id 
LEFT JOIN disciplines d on d.id = g.discipline_id 
WHERE s.id = 25
GROUP BY d.id 
