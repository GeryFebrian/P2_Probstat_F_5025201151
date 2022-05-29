# P2_Probstat_F_5025201151
### Nama:Gery Febrian Setyara
### NRP:5025201151
# Soal 1

- Poin A

 Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
 ```r
x <- c(78, 75, 67, 77, 70, 72, 78, 74, 77)
y <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)

# Standar Devisiasi selisih pasangan
sd(x-y)

 ```
Memasukkan data x yang merupakan sebelum aktivitas dan data y yang merupakan setelah aktivitas,lalu di cari standar deviasi dari selisih pasangannya yang didapat nilai
 
![1a](https://user-images.githubusercontent.com/92217354/170859513-6122bf8e-8a62-4605-aa0a-e155f4d205eb.jpeg)

- Poin B
 
 carilah nilai t (p-value)
 ```r
 t.test(x, y, alternative = "greater", var.equal = FALSE)
 ```
 Mencari nilai t(p-value) dengan t.test yang didapatkan hasil

 ![1b](https://user-images.githubusercontent.com/92217354/170860369-445d25cb-96b4-4e2b-a785-db29f3e52968.jpeg)

 - Poin C

tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

- Jawaban

Karena tingkat signifikansi nya yang 5% artinya kemungkinan terjadi kesalahan menolak hipotesis nol yang 
seharusnya diterima adalah 5% Atau 95% yakin bahwa keputusan menolak hipotesis nol yaitu tidak ada pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen, sebelum dan sesudah melakukan aktivitas A adalah benar

# Soal 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer

- Poin A

Apakah Anda setuju dengan klaim tersebut?

karena nilai-P hitungan lebih kecil dari taraf keberartian α yang ditentukan, maka tolak H0 dengan P < 0,0001.

- Poin B

Jelaskan maksud dari output yang dihasilkan!
```r
zsum.test(mean.x=23500, sigma.x = 3900, n.x = 100,  
alternative = "greater", mu = 20000,
conf.level = 0.95)
```

Dengan nilai  `z = 8.9744` dan didapat hasil dari true mean dari 95% confidence interval


![2b](https://user-images.githubusercontent.com/92217354/170859680-05551f4c-bf58-4980-b09d-ff59c3396b4b.jpeg)

dan didapatkan null hipotesis dan alternatif hipotesisnya 
```
H0 : μ = 20000
H1 : μ > 20000
```
 
- Poin C

Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

![2c](https://user-images.githubusercontent.com/92217354/170861035-492b60b8-1e52-4a51-9128-940f95040a13.png)

Kesimpulan : karena nilai Zh=9,72 Zα=2,326 maka Zh>Zα dapat disimpulkan bahwa Hipotesis ditolak


# Soal 3

Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

![3](https://user-images.githubusercontent.com/92217354/170861334-79f4d223-d923-4a49-b926-b0e80d871c8d.jpeg)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)?Buatlah:

- Poin A

H0 dan H1
dari data tabel diatas didapatkan nilai H0 dan H1 

![3A](https://user-images.githubusercontent.com/92217354/170862649-0a4de80d-4d18-4878-b9df-1de9f3aeab1a.jpeg)


- Poin B

Hitung Uji Statistik
```r
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19, 
          mean.y =2.79 , s.y = 1.32, n.y = 27, 
          alternative = "greater", var.equal = TRUE)
```

Menghitung Uji Statistik dengan data diatas dengan t.test

![3B](https://user-images.githubusercontent.com/92217354/170862878-ea2f97f1-6e99-437e-88a5-590ac04584c2.jpeg)

- Poin C

Lakukan Uji Statistik df=2
```r
install.packages("mosaic")
library(mosaic)

plotDist(dist='t', df=2, col="black")
```

Install mosaic terlebih dahulu untuk visualisasi graphnya,lalu divisualisasikan graphnya dengan Degree of Freedom = 2

![3C](https://user-images.githubusercontent.com/92217354/170863028-6292de8b-9ad5-4df5-8ee0-ac7366a5f5cf.jpeg)


- Poin D

Nilai Kritikal
```r
qt(p = 0.05, df = 2, lower.tail=FALSE)
```
Mencari nilai kritikal menggunakan `qt` dengan nilai rataan p nya 0.05 dan df = 2 didapat

![3d](https://user-images.githubusercontent.com/92217354/170863500-218cc194-9e2c-442c-a51e-6fecf582b82d.jpeg)

- Poin E
 Keputusan
 
 Tidak ada perubahan signifikan di beberapa pengujian
 
 
- Poin F
 Kesimpulan
 
 Perubahan tidak signifikan di mayoritas pengujian,pengujian paling signifikan dapat dilihat di nilai rataan X melalui Hitung Uji Statistik

 
 # Soal 4

Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika

- Poin A

dilakukan grouping agar group 1 2 3 diubah namanya menjadi jenis jenis kucing
```r
nova  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(nova)
head(nova)
attach(nova)
nova$V1 <- as.factor(nova$V1)
nova$V1 = factor(nova$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(nova$V1)

group1 <- subset(nova, V1=="Kucing Oren")
group2 <- subset(nova, V1=="Kucing Hitam")
group3 <- subset(nova, V1=="Kucing Putih")

```

# Soal 5

Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut

- Poin A
Sistem akan membaca file dari GTL.csv lalu divisualkan dengan simple plot

```r
GTL <- read_csv("GTL.csv")
head(GTL)

str(GTL)

qplot(x = Temp, y = Light, geom = "point", data = GTL) +
  facet_grid(.~Glass, labeller = label_both)

```

![5a](https://user-images.githubusercontent.com/92217354/170867059-9f097d95-1b86-431e-aa3b-89f81ae2f6f3.jpeg)


- Poin B
Melakukan Uji ANOVA dua arah dengan cara disimpan dulu GTL nya sebagai as.factor

```r
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)

```
![5b1](https://user-images.githubusercontent.com/92217354/170867282-efaf66b8-fb88-4e6c-821a-fbc4602e82db.jpeg)

Uji ANOVA dilakukan

```r
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)

```

![5b2](https://user-images.githubusercontent.com/92217354/170867284-4009f7b3-fa90-43c4-8463-ec26f9ca2be2.jpeg)

- Poin C
Menampilkan mean dan standar deviasi keluaran cahaya dengan cara grouping per category

```r
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean=mean(Light), sd=sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)

```

![5c](https://user-images.githubusercontent.com/92217354/170867481-7b5b6275-b3a4-4e06-ac93-d76197bca989.jpeg)

- Poin D
Melakukan uji tukey dari pengujian ANOVA yang telah dilakukan di poin C

```r
tukey <- TukeyHSD(anova)
print(tukey)

```
![5d](https://user-images.githubusercontent.com/92217354/170867544-a31afe1c-7150-4ba0-a98c-1a954771398f.jpeg)


- Poin E
Melakukan uji tukey dengan compact letter display dari pengujian ANOVA yang telah dilakukan di poin C

```r
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)

```
![5e](https://user-images.githubusercontent.com/92217354/170867662-f9c84ec6-09c5-4a2e-afe6-956bd682cbf0.jpeg)
