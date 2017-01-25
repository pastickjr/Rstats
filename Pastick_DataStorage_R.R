## set working directory
setwd("~/Documents/R Seminar/Pastick R Seminar/02 - Data Storage in R")
getwd()

##Importing Data
data<-read.csv("HWA_Data.csv")
head(data) ##show the first six lines of data
rm(data) ##Will get rid of data 

data<-read.csv("HWA_Data.csv")

##access particular data
data$Day

##Learning about Vectors
##Vector is a data set where data is under the same category
point <-seq(1,12)
point <- 1:12
#both will make a data set of the sequence 1 through 12

##character vectors
site <- c("A", "B", "C",
          "A", "B", "C",
          "A", "B", "C")
site
site <- rep(c("A","B","C"),4)

#location
location <- rep(c("Edge", "Interior"), each=3,length=12)
location

##duration
duration <- rep(c("5", "10"), each=6, length=12)
duration

###Numeric Vectors
#Species Count
species_count <- c(12, 10, 13, 11, 13, 12, 19, 10, 12, 11, 21, 12)
species_count
length(species_count)

###Logical Vector
logic <- species_count > 20
logic
#will give you the point count, good for true false or to see if it is binary
species_count[which (species_count > 20)]
