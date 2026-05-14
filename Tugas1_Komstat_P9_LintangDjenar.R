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
