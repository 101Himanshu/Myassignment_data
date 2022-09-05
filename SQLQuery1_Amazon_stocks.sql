use [Company assignment];

select * from dbo.sales_data;

/* total revenue generated */
select COUNTRY, YEAR_ID, SUM(SALES) as total_sales from dbo.sales_data group by country,YEAR_ID;

/* total product sold or Quarterly Revenue   */
select COUNTRY, ORDERDATE, count(PRODUCTLINE) as total_Productline, PRODUCTLINE as total_product from dbo.sales_data group by COUNTRY,ORDERDATE,PRODUCTLINE;

/* total product sold by productline */
select COUNTRY, SUM(SALES) as total_sales, PRODUCTLINE from dbo.sales_data group by COUNTRY,PRODUCTLINE;