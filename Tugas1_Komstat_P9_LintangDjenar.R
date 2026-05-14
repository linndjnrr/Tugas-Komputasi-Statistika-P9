# TUGAS 1: RINGKASAN INTEGRASI RSTUDIO DAN GITHUB
# Nama  : Lintang Djenar Mahesa Ayu
# NIM   : 1314624005

# Memuat dataset
data(mtcars)

# Menampilkan 6 data pertama (Head)
head(mtcars)

# Statistik Deskriptif
summary(mtcars)

# Menghitung Statistik untuk Variabel MPG
mean_mpg <- mean(mtcars$mpg)   # Rata-rata
sd_mpg   <- sd(mtcars$mpg)     # Standar Deviasi
max_mpg  <- max(mtcars$mpg)     # Nilai Maksimum
min_mpg  <- min(mtcars$mpg)     # Nilai Minimum

print(paste("Rata-rata MPG:", round(mean_mpg, 2)))
print(paste("Standar Deviasi MPG:", round(sd_mpg, 2)))
print(paste("Nilai Maksimum MPG:", max_mpg))
print(paste("Nilai Minimum MPG:", min_mpg))

<<<<<<< HEAD
# Membuat Histogram untuk variabel MPG agar terlihat distribusinya
hist(mtcars$mpg, 
     main = "Distribusi Efisiensi Bahan Bakar (MPG)",
     xlab = "Miles Per Gallon",
     col = "hotpink",
     border = "white")

# Mengecek apakah ada data pencilan (outlier) pada variabel MPG
outliers <- boxplot.stats(mtcars$mpg)$out
print(paste("Jumlah outlier yang terdeteksi:", length(outliers)))

# Memberikan keterangan jika data bersih
if(length(outliers) == 0) {
  print("Data MPG bersih dari pencilan, siap untuk analisis visual.")
}

# Mengecek apakah ada data yang kosong (NA) di dataset mtcars
missing_data <- sum(is.na(mtcars))
print(paste("Jumlah data missing:", missing_data))
=======
# SCATTER PLOT (Visualisasi Hubungan)
  plot(mtcars$wt, mtcars$mpg, 
       main = "Hubungan Berat Mobil vs MPG",
       pch = 19, 
       col = "hotpink")

# BOXPLOT (Deteksi Outlier & Distribusi)
# distribusi MPG berdasarkan jumlah silinder (cyl)
  boxplot(mpg ~ cyl, data = mtcars,
          main = "Efisiensi Bahan Bakar berdasarkan Silinder",
          xlab = "Jumlah Silinder",
          ylab = "Miles Per Gallon (MPG)",
          col = c("pink", "red", "hotpink"), 
          border = "black")
  
# BARPLOT (Perbandingan Jumlah)
# Menghitung frekuensi jenis transmisi (0 = automatic, 1 = manual)
  transmisi <- table(mtcars$am)
  barplot(transmisi, 
          main = "Jumlah Kendaraan berdasarkan Transmisi",
          names.arg = c("Automatic", "Manual"),
          col = "red",
          border = "white")
>>>>>>> visualisasi

# Analisis Korelasi
# Melihat korelasi antara berat mobil (wt) dan efisiensi (mpg)
korelasi_mpg_wt <- cor(mtcars$mpg, mtcars$wt)
print(paste("Nilai Korelasi MPG vs Weight:", round(korelasi_mpg_wt, 3)))
# Komentar: Nilai korelasi negatif yang kuat menunjukkan semakin berat mobil, 
# semakin rendah efisiensi bahan bakarnya.
