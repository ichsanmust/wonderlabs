select  
b.id as person_id,
b.full_name as person ,
c.full_name as relation_person, 
d.status_name as relation_name,
e.full_name as family_name

from 
relational a
left join person b on b.id = a.person_id
left join person c on c.id = a.person_relational_id
left join status d on d.id = a.status_id
left join person e on e.id = a.family_id
order by b.id ASC, c.id ASC