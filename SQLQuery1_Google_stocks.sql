use [Company assignment];

select * from dbo.google_stocks;

/* highest opeaning and lowest opening by month. */
select Date, MAX(High) as Highest_opening, MIN(Low) as Lowest_opening from dbo.google_stocks group by Date;