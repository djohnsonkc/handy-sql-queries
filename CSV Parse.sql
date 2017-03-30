ALTER function [dbo].[fn_ParseCSVString]
(
@CSVString 	varchar(8000) ,
@Delimiter	varchar(10)
)
returns @tbl table (s varchar(1000))
as
/*
select * from dbo.fn_ParseCSVString ('qwe,rew,wer', ',')
*/
begin
declare @i int ,
	@j int
	select 	@i = 1
	while @i <= len(@CSVString)
	begin
		select	@j = charindex(@Delimiter, @CSVString, @i)
		if @j = 0
		begin
			select	@j = len(@CSVString) + 1
		end
		insert	@tbl select substring(@CSVString, @i, @j - @i)
		select	@i = @j + len(@Delimiter)
	end
	return
end



