--update rockexport set
--FirstName = 

select 
LastName = Left(Name, charindex(',', Name) -1),
FirstName = substring(Name, charindex(',', Name) +2, (len(Name) - charindex(',', Name)))
