-- 6. Найти список студентов в определенной группе:

SELECT g.name as group_, s.fullname as student
from  students s 
join [groups] g  on g.id = s.group_id 
WHERE g.id = 1
ORDER BY s.fullname
