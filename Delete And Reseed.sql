
select 'delete from My404Data.dbo.' + name,

'DBCC CHECKIDENT (''My404Data.dbo.' + name +''', RESEED, 0)'

from sysobjects o
where xtype = 'U'
order by o.name