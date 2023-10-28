delete p from Person as p, Person as q
where p.id > q.id and p.email=q.email