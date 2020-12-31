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
