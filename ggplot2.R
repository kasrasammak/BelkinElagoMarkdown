
# load libraries
library(ggplot2)
library(dplyr)

# read data
cars <- read.csv("data/cars.csv")

attributes(cars)
summary(cars)
str(cars)
names(cars)
cars$speed.of.car
hist(cars$speed.of.car)
plot(cars$speed.of.car)
qqnorm(cars$speed.of.car)
set.seed(123)
trainSize <- round(nrow(cars) * 0.7)
testSize <- nrow(cars) - trainSize
nrow(cars)
training_indices <- sample(seq_len(nrow(cars)), size = trainSize)
seq_len(50)
trainSet <- cars[training_indices,]
testSet <- cars[-training_indices,]
linearModel = lm(, trainSet)
cars %>%  group_by(age)