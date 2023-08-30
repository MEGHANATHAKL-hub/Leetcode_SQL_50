select s.unique_id, m.name
from Employees as m
LEFT JOIN EmployeeUNI as s on m.id = s.id