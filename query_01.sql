-- 1. Найти 5 студентов с наибольшим средним баллом по всем предметам:

SELECT s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
GROUP BY s.id 
ORDER BY avg_grade DESC
LIMIT 5;
