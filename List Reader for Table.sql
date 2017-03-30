
select 

--r.EntityID = int.Parse(Utils.ReplaceNull(reader["EntityID"].ToString(), "0"));


readerName = CASE c.xtype 
	WHEN 231 THEN  'r.' + c.name + ' = Utils.ReplaceNull(reader["' + c.name + '"].ToString(), "");'
	WHEN 56 THEN  'r.' + c.name + ' = int.Parse(Utils.ReplaceNull(reader["' + c.name + '"].ToString(), "0"));'
	WHEN 104 THEN 'r.' + c.name + ' = bool.Parse(Utils.ReplaceNull(reader["' + c.name + '"].ToString(), "False"));'
	WHEN 58 THEN 'r.' + c.name + ' = DateTime.Parse(Utils.ReplaceNull(reader["' + c.name + '"].ToString(), "1/1/1900"));'
	else 'r.' + c.name + ' = Utils.ReplaceNull(reader["' + c.name + '"].ToString(), "");'
END


from syscolumns c, sysobjects o
where c.id = o.id 
AND o.Name = 'SkiResort'
order by o.name, c.colorder