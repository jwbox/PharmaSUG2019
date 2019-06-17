* Shape 4 Activity
use the starter PROC SQL code to produce a 
report with the following requirements
get the number of male students
and the number of female students
who are under 12 years and over 13 years of age
group the data by sex to get this report
hint for boolean expression: sum(gender='M');
title 'Number of Male & Female students <12 years and > 13 years of age';

proc sql;
	select sex,
		sum(sex='M') 'no. of male students',
		sum(sex='F') 'no. of female students',
		sum(age <12) 'under 12 years',
		sum(age>13) 'over 13 years'
	from sashelp.class
		group by sex;
quit;

title;