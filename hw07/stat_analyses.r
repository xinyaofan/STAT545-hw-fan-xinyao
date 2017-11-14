library(gapminder)
library(tidyverse)
library(broom)
# read the data
gapminder_dat<-read.delim("gapminder_dat.tsv")
#nested data frame
gap_nested<-gapminder_dat%>%
  group_by(continent,country)%>%
  nest()
#lm regression
le_vs_yr <- function(df) {
  lm(lifeExp ~ I(year - 1950), data = df)
}
#calculate the sd of each linear models
sd_func<-function(fit){
  summary(fit)$sigma
}
#get the sd 
gap_sd <- gap_nested %>%
  mutate(fit = map(data,le_vs_yr),
         sd = map(fit,sd_func)) %>%
  select(continent,country,sd) %>%
  unnest(sd)

#get the coefficient for each country
gap_coef <- gap_nested %>% 
  mutate(fit = map(data, le_vs_yr),
         tidy = map(fit, tidy)) %>% 
  select(continent, country, tidy) %>% 
  unnest(tidy)%>%
  select(continent:estimate)%>%
  spread(key = term, value = estimate)
#add the sd column to the final gap_coefs dataset
gap_coefs<-gap_coef%>%
  left_join(gap_sd)

Select_Asia<-gap_coefs%>%
  filter(continent=="Asia")%>%
  arrange(sd)%>%
  filter(sd<0.5|sd>5)

Select_Africa<-gap_coefs%>%
  filter(continent=="Africa")%>%
  arrange(sd)%>%
  filter(sd<0.45|sd>7)

Select_Europe<-gap_coefs%>%
  filter(continent=="Europe")%>%
  arrange(sd)%>%
  filter(sd<0.22|sd>2.5)

Select_Americas<-gap_coefs%>%
  filter(continent=="Americas")%>%
  arrange(sd)%>%
  filter(sd<0.3|sd>2)
worst_best<-rbind(Select_Asia,Select_Africa,Select_Europe,
                  Select_Americas,filter(gap_coefs,continent=="Oceania"))
write.table(worst_best,file="worst_best_countries.tsv",quote=FALSE,
            sep = "\t", row.names = FALSE)
write.table(gap_coefs, file = "gap_coefs.tsv",quote = FALSE,
            sep = "\t", row.names = FALSE)
