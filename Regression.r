#setwd("/Users/muhammadrasyidkhaikal/Desktop/Kuliah/Data\ Mining\ TB/DataMiningTugasBesar")
setwd("D:/Semester 3/Data Mining/Tugas Besar/DataMiningTugasBesar")
dataset <- read.csv("StudentsPerformance.csv" , sep = ",")
head(dataset)

# Korelasi Antara NIlai Math, Reading, write
cor(dataset$math.score, dataset$reading.score)
cor(dataset$math.score, dataset$writing.score)

cor(dataset$reading.score, dataset$math.score)
cor(dataset$reading.score, dataset$writing.score)

cor(dataset$writing.score, dataset$math.score)
cor(dataset$writing.score, dataset$reading.score)

# Model Regression
linearMath <- lm(math.score ~ reading.score + writing.score, dataset)
summary(linearMod)

linearRead <- lm(reading.score ~ math.score + writing.score, dataset)
summary(linearRead)

linearWrite <- lm(writing.score ~ reading.score + math.score, dataset)
summary(linearWrite)

# Soal Prediksi 
dataFindMath <- data.frame(
  writing.score = 76,
  reading.score = 69
)
dataFindRead <- data.frame(
  math.score = 88,
  writing.score = 84
)
dataFindWrite <- data.frame(
  math.score = 88,
  reading.score = 70
)

#Prediksi Nilai (Hasil Data Mining)
predict(linearMath, dataFindMath)
predict(linearRead, dataFindRead)
predict(linearWrite, dataFindWrite)

install.packages("corrplot")
library("corrplot")

matrix <- data.frame(
  math = dataset$math.score,
  writing = dataset$writing.score,
  reading = dataset$reading.score
)
M <- cor(matrix)
corrplot::corrplot(M, method="number", type="lower", diag = FALSE, tl.srt = 43)
