select 

Left(o.name, 20) as [Table Name], 
Left(c.name, 20) as [Column Name], 
c.type as [Column Type]

from syscolumns c, sysobjects o
where c.id = o.id 
order by o.name, c.colorder