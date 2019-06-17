
*Shape 4 PROC SQL and the boolean
We would like to get counts for population ranges 
by region ;

*
AFR  - africa
AMR  - americas
WPR  - western pacific
EUR  - europe
SEAR - south east asia
EMR  - middle east;

title "population counts by country";
title2 "&country";
title3 "had the maximum population of &maxpop in 2005";

proc sql;
	select  region,
		sum(pop <= 1000000) 'upto 1,000,000', 
		sum(pop between    1000001 and    10000000)    '1 -  10 million', 
		sum(pop between   10000001 and    50000000)   '10 -  50 million',
		sum(pop between   50000001 and   100000000)   '50 - 100 million',
		sum(pop between  100000001 and   500000000)  '100 - 500 million',
		sum(pop >  500000001 )  '500 million and above'

	from sashelp.demographics
		group by 1
	;
quit;


* Shape 4 Activity
use the starter PROC SQL code to produce a 
report with the following requirements
get the number of male students
and the number of female students
who are under 12 years
and those who are over 13 years of age
group the data by sex to get this report
hint for boolean expression: sum(gender='M');

title 'Number of Male & Female students <12 years and > 13 years of age';

proc sql;
	select 
		from sashelp.class
			group by;
quit;

title;


