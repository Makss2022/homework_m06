-- 5. Найти какие курсы читает определенный преподаватель:

select t.fullname, d.name 
from teachers t  
left join disciplines d on t.id = d.teacher_id 
WHERE t.id = 3
