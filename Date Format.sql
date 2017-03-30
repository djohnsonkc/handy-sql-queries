SELECT GetDate() as LongDate, 
CONVERT(varchar(15), GetDate(), 101) as ShortDate,
CONVERT(varchar(15), GetDate(), 108) as ShortTime