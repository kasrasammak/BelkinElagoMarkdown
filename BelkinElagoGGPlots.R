# load libraries
library(ggplot2)
library(dplyr)

# read data
surveyData <- read.csv("data/surveyBelkinElago.csv", sep=";", dec =",")
surveyData <- subset(surveyData, brand != " ")
c <- ggplot(surveyData, aes(salary, fill = brand))

#plot data

#histogram (one variable)
c  + geom_histogram(bins=100) + 
  scale_fill_manual(values=c("brown", "black")) + 
  theme_dark() +
  labs(title = "Number of People per Salary at Belkin and Elago", subtitle = "A Histographical Representation")

#scatter (2 variables)
d <- ggplot(data=surveyData, aes(x = age, y = credit, colour = brand))
d + geom_smooth() + 
  theme_dark() +
  geom_point() +
  scale_colour_manual(values=c("brown", "black")) + 
  labs(title = "Credit score per Age at Belkin and Elago", 
       subtitle = "A Scatter Plot Representation")

  
              