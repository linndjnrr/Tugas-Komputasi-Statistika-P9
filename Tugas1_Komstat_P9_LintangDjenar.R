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

# Membuat Histogram untuk variabel MPG agar terlihat distribusinya
hist(mtcars$mpg, 
     main = "Distribusi Efisiensi Bahan Bakar (MPG)",
     xlab = "Miles Per Gallon",
     col = "hotpink",
     border = "white")
