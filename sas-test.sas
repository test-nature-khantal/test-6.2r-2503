* Example SAS Program;

* Import data;
data sales_data;
   infile 'C:\data\sales.csv' dlm=',' firstobs=2;
   input Date : mmddyy10. Sales : dollar8.;
run;

* Summary Statistics;
proc means data=sales_data;
   var Sales;
   output out=summary_stats mean=avg_sales std=std_sales;
run;

* Print the summary statistics;
proc print data=summary_stats;
run;
