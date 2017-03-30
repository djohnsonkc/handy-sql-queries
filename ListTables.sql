select *
from sysobjects o
where xtype = 'U'
order by o.name