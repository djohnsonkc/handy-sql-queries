select 

c.name + ','

from syscolumns c, sysobjects o
where c.id = o.id 
AND o.Name = 'Assets'
order by o.name, c.colorder