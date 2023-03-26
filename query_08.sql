-- 8. Найти средний балл, который ставит определенный преподаватель по своим предметам:

SELECT t.fullname as teachar, d.name as discipline, round(AVG(g.grade), 2) as avg_grade
from teachers t 
left join disciplines d on t.id  = d.teacher_id 
left JOIN grades g  on d.id = g.discipline_id 
WHERE t.id  = 3
GROUP BY d.id 
