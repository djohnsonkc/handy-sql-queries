
declare @csv varchar(1000)
select @csv = coalesce(@csv+',','') + cast(residenceid as nvarchar(10))
from Residence
select @csv