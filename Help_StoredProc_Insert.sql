select 

'cmd.Parameters.Add("@' + c.Name + '", SqlDbType.' + t.Name + ', ' + 
CAST(c.prec as varchar(20)) + ');' As C#ParamAdd,

'cmd.Parameters["@' + c.Name + '"].Value = this.' + c.Name + ';' As ParamValue,
'private ' + t.Name + ' ' + c.Name + ';' as PrivateVar,

'get { return ' + c.Name + '; }' As Getter,
'set { ' + c.Name + ' = value; }' As Setter,

'person.' + c.Name + ' = txt' + c.Name + '.txt;' as CodeSet,

'@' + c.Name + ' ' + t.Name + '(' + CAST(c.prec as varchar(20)) + ') = NULL,' As SProc_Input, 

'@' + c.Name + ',' As SProc_Insert,

c.Name + ',' As SProc_InsertCols,
c.Name + ' = @' + c.Name + ',' As SProc_Update,
t.Name As ColType, 
c.prec 

from syscolumns c, sysobjects o, systypes t
where c.id = o.id AND c.xtype = t.xtype
AND o.Name = 'person'
AND NOT t.Name = 'sysname'
order by o.name, c.colorder