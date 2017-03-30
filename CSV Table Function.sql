ALTER FUNCTION [dbo].[fn_CsvResidence] 
(
	@destinationid as int
)
RETURNS nvarchar(4000)
AS
BEGIN

declare @csv varchar(4000)
select @csv = coalesce(@csv+',','') + cast(r.Residenceid as nvarchar(10))
from Residence r
WHERE r.Destinationid = @destinationid

RETURN(@csv)

END