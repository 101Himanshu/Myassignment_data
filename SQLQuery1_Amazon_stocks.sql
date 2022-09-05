use [Company assignment];

Select * From amazon_stocks;

/* largest daily return for Amazon */
Select Company, Date, MAX(Daily_return) as lar_daily_return from amazon_stocks group by Company, Date;