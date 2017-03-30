select 'grant execute on ' + o.name + ' to [web_user]'
from sysobjects o
where xtype = 'P'
order by o.name