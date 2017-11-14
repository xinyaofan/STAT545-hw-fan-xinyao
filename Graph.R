gapminder_dat<-read.csv("gapminder_dat.csv")
Asia<-filter(gapminder_dat,country%in%c("Israel","Pakistan","Cambodia"))
p_Asia<-ggplot(Asia, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")
ggsave("p_Asia.png", width=10, height=5, units="cm", plot=p_Asia)

Africa<-filter(gapminder_dat,country%in%c("Mauritania","Zimbabwe"))
p_Africa<-ggplot(Africa, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")
ggsave("p_Africa.png", width=10, height=5, units="cm", plot=p_Africa)


Americas<-filter(gapminder_dat,country%in%c("Canada","Jamaica"))
p_Americas<-ggplot(Americas, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")
ggsave("p_Americas.png", width=10, height=5, units="cm", plot=p_Americas)

Europe<-filter(gapminder_dat,country%in%c("Sweden","Switzerland","Bulgaria","Montenegro"))
p_Europe<-ggplot(Europe, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+
  geom_smooth(se=FALSE, span=1, method="loess")
ggsave("p_Europe.png", width=10, height=5, units="cm", plot=p_Europe)

Oceania<-filter(gapminder_dat,continent=="Oceania")
p_Oceania<-ggplot(Oceania, aes(x=year, y = lifeExp)) +
  facet_wrap(~ country)+geom_point()+geom_smooth(se=FALSE, span=1, method="loess")
ggsave("p_Oceania.png", width=10, height=5, units="cm", plot=p_Oceania)