setwd("/Users/muhammadrasyidkhaikal/Desktop/Kuliah/Data\ Mining\ TB/DataMiningTugasBesar")
dataset <- read.csv("StudentsPerformance.csv" , sep = ",")
head(dataset)

cor(dataset$math.score, dataset$reading.score)
cor(dataset$math.score, dataset$writing.score)

cor(dataset$reading.score, dataset$math.score)
cor(dataset$reading.score, dataset$writing.score)

cor(dataset$writing.score, dataset$math.score)
cor(dataset$writing.score, dataset$reading.score)

linearMod <- lm(math.score ~ reading.score + writing.score, dataset)
summary(linearMod)

