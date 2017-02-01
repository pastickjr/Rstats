install.packages("dplyr")
library(dplyr)
getwd()

HWAdata<-read.csv("02 - Data Storage in R/HWA_Data.csv")
head(HWAdata)

HWAdata<- select(HWAdata, Time, DensClass, Height..m., BirdID, Ovisacs,CrawlerCount)
head(HWAdata)
birds<- c("CAWA", "COYE", "NAWA", "OVEN")
HighDens<-filter(HWAdata, DensClass=="High")
HWAdata

m2f<-function(m) {m*3.28084}
m2f(1)

HighDens<-mutate(HighDens, ht.ft = m2f(Height..m.))
head(HighDens)

HighDens<-select(HighDens, DensClass, BirdID, Ovisacs, CrawlerCount, ht.ft)
head(HighDens)



crawlerbyspec<-summarize(group_by(HighDens, BirdID), mean(CrawlerCount))                                                        
crawlerbyspec
countbirds<-count(group_by(HighDens, CrawlerCount), BirdID)
countbirds

YEWA.NAWA.CAWA <- HWAdata %>%
  select(DensClass, BirdID, Ovisacs, CrawlerCount)%>%
  filter(BirdID==c("YEWA","NAWA","CAWA")) %>%
  group_by(BirdID)%>%
  summarize(mean(CrawlerCount))%>%
  print(YEWA.NAWA.CAWA)

#called piping. You can pipe within functions. 


