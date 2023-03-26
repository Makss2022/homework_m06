-- 1. Найти 5 студентов с наибольшим средним баллом по всем предметам:

SELECT s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
GROUP BY s.id 
ORDER BY avg_grade DESC
LIMIT 5;

-- 2. Найти студента с наивысшим средним баллом по определенному предмету:

SELECT d.name, s.fullname, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id 
WHERE d.id = 1
GROUP BY s.id
ORDER BY avg_grade DESC
LIMIT 1;

-- 3. Найти средний балл в группах по определенному предмету:

SELECT gr.name, d.name, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
LEFT JOIN students s ON s.id = g.student_id
LEFT JOIN disciplines d ON d.id = g.discipline_id
LEFT JOIN [groups] gr ON gr.id = s.group_id 
WHERE d.id = 6
GROUP BY gr.id
ORDER BY avg_grade DESC;

-- 4. Найти средний балл на потоке (по всей таблице оценок):

SELECT ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g 

-- 5. Найти какие курсы читает определенный преподаватель:

select t.fullname, d.name 
from teachers t  
left join disciplines d on t.id = d.teacher_id 
WHERE t.id = 3

-- 6. Найти список студентов в определенной группе:

SELECT g.name as group_, s.fullname as student
from  students s 
join [groups] g  on g.id = s.group_id 
WHERE g.id = 1
ORDER BY s.fullname

-- 7. Найти оценки студентов в отдельной группе по определенному предмету:

SELECT gr.name as group_ , d.name as discipline , s.fullname as student , g.grade 
from students s 
join [groups] gr on gr.id = s.group_id 
JOIN grades g on s.id = g.student_id 
JOIN disciplines d on d.id = g.discipline_id 
WHERE gr.id = 1 AND d.id = 1
ORDER BY s.id 

-- 8. Найти средний балл, который ставит определенный преподаватель по своим предметам:

SELECT t.fullname as teachar, d.name as discipline, round(AVG(g.grade), 2) as avg_grade
from teachers t 
left join disciplines d on t.id  = d.teacher_id 
left JOIN grades g  on d.id = g.discipline_id 
WHERE t.id  = 3
GROUP BY d.id 

-- 9. Найти список курсов, которые посещает определенный студент:

SELECT s.fullname as student, d.name as discipline
from students s 
left join grades g  on s.id = g.student_id 
LEFT JOIN disciplines d on d.id = g.discipline_id 
WHERE s.id = 25
GROUP BY d.id 

-- 10. Список курсов, которые определенному студенту читает определенный преподаватель:

SELECT d.name as discipline, s.fullname as student, t.fullname as teachar
from disciplines d 
join teachers t on t.id  = d.teacher_id 
JOIN grades g on d.id = g.discipline_id 
JOIN students s  on s.id = g.student_id 
WHERE s.id = 10 AND t.id = 2
GROUP BY d.id 

-- 11. Средний балл, который определенный преподаватель ставит определенному студенту.

SELECT t.fullname as teacher, s.fullname as student, ROUND(AVG(g.grade), 2) as avg_grade
FROM grades g
join disciplines d on d.id = g.discipline_id 
JOIN teachers t on t.id = d.teacher_id 
JOIN students s on s.id = g.student_id 
WHERE t.id = 3 AND s.id = 45