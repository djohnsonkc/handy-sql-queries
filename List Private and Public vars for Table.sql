
select 


privateName = CASE c.xtype 
	WHEN 231 THEN 'private string ' + lower(c.name) + ';'
	WHEN 56 THEN 'private int ' + lower(c.name) + ';'
	WHEN 104 THEN 'private bool ' + lower(c.name) + ';'
	WHEN 58 THEN 'private DateTime ' + lower(c.name) + ';'
	else 'private string ' + lower(c.name) + ';'
END,

publicName = CASE c.xtype 
	WHEN 231 THEN 'public string ' + c.name + ' { set { ' + lower(c.name) + ' = value; } get { return ' + lower(c.name) + ';}}'
	WHEN 56 THEN 'public int ' + c.name + ' { set { ' + lower(c.name) + ' = value; } get { return ' + lower(c.name) + ';}}'
	WHEN 104 THEN 'public bool ' + c.name + ' { set { ' + lower(c.name) + ' = value; } get { return ' + lower(c.name) + ';}}'
	WHEN 58 THEN 'public DateTime ' + c.name + ' { set { ' + lower(c.name) + ' = value; } get { return ' + lower(c.name) + ';}}'
	else 'public string ' + c.name + ' { set { ' + lower(c.name) + ' = value; } get { return ' + lower(c.name) + ';}}'
END


from syscolumns c, sysobjects o
where c.id = o.id 
AND o.Name = 'SkiResort'
order by o.name, c.colorder