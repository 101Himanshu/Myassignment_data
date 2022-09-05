use [Company assignment];

select * from dbo.netflix_stocks;

/* standard deviation of Volume per year for Netflix. */
select  Date,
		AVG(SUM(Volume)) over () as avg_Vol,
		STDEV(SUM(Volume)) over () as std_of_Vol
from dbo.netflix_stocks Group by Date;