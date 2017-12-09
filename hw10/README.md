
## Welcome to my github 
   You can review my work clicking following links
### Links for Homework 6

 - [hw10.md](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw10/hw10.md)

 - [hw10.Rmd](https://github.com/xinyaofan/STAT545-hw-fan-xinyao/blob/master/hw10/hw10.Rmd)
 
 ### Report of Process
 I tried two prompts of this homework. First is using an R package that wraps an API and second one is making API queries “by hand” using httr. Using R package is not so difficult, the tricky part is use countrycode to get a "country" column. In second prompt, first difficulty I met is to choose a proper website. I try to download data from -[website](https://www.numbeo.com/quality-of-life/rankings.jsp), however, I can't find the right css of quality of life index here, I can only get the information of countries. The reason I think is that these data don't have a "class" but only have a "style". Thus, I changed a webstie and try to get the data from the billboard. The most difficult part is to set the right link for each singer, you have to use stingr package to replace some unuseful strings.Besides, some singer's name is not totally match with our designed link, so I check it by myself for each singer. As for the data analysis part, it is easy and just like what we did before. 
