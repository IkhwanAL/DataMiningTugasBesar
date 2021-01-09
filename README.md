# Data Mining Tugas Besar
Tugas Besar Data Mining

Kelompok:
 1. Ikhwan A Latif (3311901052)
 2. M Rasyid Haikal (3311901038)

File: Students Performance Exams

Model: Linear Regression

```R
 dataset <- read.csv("StudentsPerformance.csv" , sep = ",")
```
Mengambil Data Pada File CSV

```R
 cor(dataset$math.score, dataset$reading.score)
```
Mencari Korelasi Nilai Antara 2 Variable

```R
 cor(dataset$writing.score, dataset$reading.score)
```
Korelasi Antara Writing dengan Reading Memiliki Nilai yang tinggi
yang berarti 2 variable ini memiliki nilai yang repetitive(yang berarti berkelanjutan)

dalam penentuan Model Regression Kami membuat 3 model perhitungan
```R
 linearMath <- lm(math.score ~ reading.score + writing.score, dataset)
 linearRead <- lm(reading.score ~ math.score + writing.score, dataset)
 linearWrite <- lm(writing.score ~ reading.score + math.score, dataset)
```

Lalu Mencoba Test Linear Model Yang Telah dibuay Dengan Data Dummy
```R
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
```
Lalu Dari Data Diatas Kami Melakukan Predict Pada Tiap Pelajaran
```R
 predict(linearMath, dataFindMath)
 predict(linearRead, dataFindRead)
 predict(linearWrite, dataFindWrite)
```
Hasil Predict Pada Nilai Dummy
![Hasil Predict](https://github.com/IkhwanAL/DataMiningTugasBesar/blob/main/src/predict.jpg?raw=true)

Hasil Korelasi Menggunakan Library corrplot
```R
corrplot::corrplot(M, method="number", type="lower", diag = FALSE, tl.srt = 43)
```
![Gambar Korelasi](https://raw.githubusercontent.com/IkhwanAL/DataMiningTugasBesar/main/src/corr.jpg)
