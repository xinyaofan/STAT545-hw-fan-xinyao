library(tidyverse)
gapminder_dat<-read.delim("gapminder_dat.tsv")
Asia<-filter(gapminder_dat,country%in%c("Israel","Pakistan","Cambodia"))
p_Asia<-ggplot(Asia, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")+labs(title=" LifeExp vs Year of Asia")
ggsave("p_Asia.png",width=8, height=4,plot=p_Asia)

Africa<-filter(gapminder_dat,country%in%c("Mauritania","Zimbabwe","Equatorial Guinea
"))
p_Africa<-ggplot(Africa, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")+labs(title=" LifeExp vs Year of Africa")
ggsave("p_Africa.png", width=8, height=4, plot=p_Africa)


Americas<-filter(gapminder_dat,country%in%c("Canada","Jamaica","Argentina"))
p_Americas<-ggplot(Americas, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")+labs(title=" LifeExp vs Year of Americas")
ggsave("p_Americas.png", width=8, height=4, plot=p_Americas)

Europe<-filter(gapminder_dat,country%in%c("Sweden","Switzerland","Bulgaria"))
p_Europe<-ggplot(Europe, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")+labs(title=" LifeExp vs Year of Europe")
ggsave("p_Europe.png", width=8, height=4, plot=p_Europe)

Oceania<-filter(gapminder_dat,continent=="Oceania")
p_Oceania<-ggplot(Oceania, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+geom_smooth(se=FALSE, span=1, method="loess")+labs(title=" LifeExp vs Year of Oceania")
ggsave("p_Oceania.png", width=8, height=4,plot=p_Oceania)