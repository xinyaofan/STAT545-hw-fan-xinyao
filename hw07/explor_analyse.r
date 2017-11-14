# Download the raw data
library(ggplot2)
library("downloader")
library(forcats)
library(tidyverse)
library(dplyr)
download.file("https://raw.githubusercontent.com/jennybc/gapminder/master/inst/extdata/gapminder.tsv", destfile = "gapminder.tsv")
gapminder<-read.delim("gapminder.tsv")
## two descriptive plot of lifeExp vs year of each continent
p=ggplot(gapminder,aes(x=continent,y=lifeExp))
p1<-p+geom_boxplot(aes(fill=continent,color=continent),outlier.shape = 1,outlier.size = 2)
p2<-ggplot(gapminder,aes(year, lifeExp, group=continent)) +
  facet_wrap(~ continent) +
  geom_line(aes(color=continent,group=country))+theme_bw() +
  labs(title=" LifeExp vs Year")
ggsave("p1.png", width=10, height=5, plot=p1)
ggsave("p2.png", width=10, height=5, plot=p2)
#get the order of continent based on their mean lifeExp
order_continent<-levels(fct_reorder(gapminder$continent,gapminder$lifeExp,mean,desc=TRUE))
#sort the actual data and choose the variable we want to deal with 
gapminder_dat<-gapminder%>%
  group_by(continent)%>%
  mutate(max_life=mean(lifeExp))%>%
  arrange(max_life)%>%
  select(country,continent,year,lifeExp)

write.table(gapminder_dat, "gapminder_dat.tsv", quote = FALSE,
            sep = "\t", row.names = FALSE)
