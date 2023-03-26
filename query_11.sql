-- 11. Средний балл, который определенный преподаватель ставит определенному студенту.

SELECT t.fullname as teacher, s.fullname as student, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
join disciplines d on d.id = g.discipline_id 
JOIN teachers t on t.id = d.teacher_id 
JOIN students s on s.id = g.student_id 
WHERE t.id = 3 AND s.id = 45