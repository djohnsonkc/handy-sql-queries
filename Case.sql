Select

FirstNickLast = CASE p.NickName 
	WHEN '' THEN p.FirstName + ' ' + p.LastName 
	WHEN NULL THEN p.FirstName + ' ' +p. LastName 
	ELSE p.NickName + ' ' + p.LastName
END

From People p Where p.UID = 871
