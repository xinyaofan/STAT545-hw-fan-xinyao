
## Welcome to my github 
   
### Links for Homework 7
I wrote 3 R scripts to do some data analyse and write a Makefile to automate my pipeline using make.
 - [explor_analyse](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/explor_analyse.r)
 
 - [stat_analyses](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/stat_analyses.r)
 
 - [Graph.R](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/Graph.R)
 
 - [makefile](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/Makefile)
 
 You can read my report in the following links.
 - [hw07.md](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/report.md)

 - [hw07.Rmd](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw07/report.Rmd)
 
 ### Report of Process
 In this homework, I first create 3 R scripts: explor_analyse.r, stat_analyses.r, Graph.R to do some small data analysis.

- In explore_analyse.r: read the data, reorder the continents based on life expectancy and then I use select to choose the variables we are interested in (lifExp, year). Write numerical data to file in CSV or TSV format. 
- In stat_analyses.r: Give estimated intercepts, slopes, and residual error variance of linear regression (lifExp vs year) for each country.Also, I find the 3 or 4 “worst” and “best” countries for each continent. For each continent, I choose two "best" countries whose sd is the top2 smallest and one "worst" country whose sd is the largest one.
- In Graph.R: Create scatterplots of life expectancy vs. year for each continent.
Then I write a Makefile to automate my pipeline using make and genearate the final report.md.

The most difficult part for me is to choose the best and worst countries for each continent. Since one selected criteria could not be applied to each continent, so I find the worst and best countries for each continent seperately. I was wondering whether there is a more eaiser way to do this thing. Also, in my report, I give each figure a name but it doesn't show in my final report. Though it is not a easy task for me, it's really happy to try using "makefile" to do some thing!
