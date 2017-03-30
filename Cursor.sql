DECLARE people_cursor CURSOR
FOR
   SELECT UID, EmployeeID, FirstName, LastName
   FROM People WHERE EmployeeID = 0
OPEN people_cursor
DECLARE @UID int, @EmployeeID int, @FirstName varchar(25), @LastName varchar(25)
--SET @tablename = 'authors'
FETCH NEXT FROM people_cursor INTO @UID, @EmployeeID, @FirstName, @LastName
WHILE (@@FETCH_STATUS <> -1)
BEGIN
   IF (@@FETCH_STATUS <> -2)
   BEGIN   
      --SELECT @tablename = RTRIM(@tablename) 
      --EXEC ('SELECT ''' + @tablename + ''' = count(*) FROM ' 
      --      + @tablename )
      --PRINT ' '
	--EXEC ('UPDATE People Set EmployeeID = (Select MAX(EmployeeID) From People) WHERE UID = ' + @UID)
	PRINT @FirstName + ' ' + @LastName
   END
   FETCH NEXT FROM people_cursor INTO @UID, @EmployeeID, @FirstName, @LastName
END
CLOSE people_cursor
DEALLOCATE people_cursor

