# 2. Hafta odevi
## Emre Kayık

# Soru 1 - 1 ile 100 arasındaki tamsayılardan oluşan bir vektör oluşturunuz.

vektor = c()

for(i in 1:100){
  vektor = c(vektor, i)
}
vektor

# -----------------------------------------------------------------------------------------

# Soru 2 - Bir vektör x <- c(25,43,21,12,55,67,89,59,67,83) biçiminde yaratıldığına göre
# x[3] ve x[9] değerlerini bulan R kodunu yazınız.

x <- c(25,43,21,12,55,67,89,59,67,83)

sprintf(
  "x[3] degeri: %d x[9]; degeri: %d", x[3], x[9]
)

# -----------------------------------------------------------------------------------------


# Soru 3 - Yukarıdaki vektörün eleman sayısını bulan R kodunu yazınız.

print(length(x))

# -----------------------------------------------------------------------------------------

# isim    |  boy
# ----------------
# halit   |   175
# mehmet  |   166
# ersin   |   180
# suat    |   185
# tuncer  |   160

# Soru 4 - Tablonun Boy sütununda yer alan verilerin ortalamasını hesaplayan R kodlarını yazınız.

# dataframe oluşturalım

veri <- data.frame(
  isim <- c("halit", "mehmet", "ersin", "suat", "tuncer"),
  boy <- c(175, 166, 180, 185, 160)
)

# dataframe'deki boy sütunun ortalamasını hesaplayalım
print(mean(veri[["boy"]]))

# -----------------------------------------------------------------------------------------

# Soru 5 - Bir x <- c(11,15,9,7,12,13) vektörünügöz önüne alalım.
# Bu vektörün içerdiği veriler arasından 10'dan büyük olanları seçerek 
# bulan R kodlarını yazınız.

x <- c(11,15,9,7,12,13)

secim <- x[x > 10]
secim

# -----------------------------------------------------------------------------------------

# Soru 6 - Yukarıdaki tabloda isimlerden oluşan birinci sütundaki veriyi
# bir vektör içinde tanımlayarak vektörün yaratılmasını sağlayan R kodlarını yazınız.

isim <- c("halit", "mehmet", "ersin", "suat", "tuncer")

# -----------------------------------------------------------------------------------------

# Soru 7 - x <- c(3,22,11,19,16,25) vektörünün 4. elemanını 11 olarak değiştiren 
# R kodunu yazınız.

x <- c(3,22,11,19,16,25)
x[4] <- 11
x

# -----------------------------------------------------------------------------------------

# Soru 8 - Yukarıdaki soruda yer alan vektörün 3. elemanını silen R kodunu yazınız.

x <- x[-3]
x

# -----------------------------------------------------------------------------------------

# Soru 9 - x <- c(12,2,4,17,13,19,6,24,15,23) vektörünün 3 ile 5. arasındaki 
# tüm elemanlarını silen R kodunu yazınız.

x <- c(12,2,4,17,13,19,6,24,15,23)

# aşağıdaki kodda 3 ile 5. arasındaki elemanlar silinir.
x <- x[-(3:5)]
x


# -----------------------------------------------------------------------------------------

# Soru 10 - Bir vektörün tüm elemanlarını silmek için nasıl bir yol izlenir?

x <- c(12,2,4,17,13,19,6,24,15,23)
# boş bir vektöre eşitleyerek vektörün elemanlarını silebilirim.
x <- c()

# -----------------------------------------------------------------------------------------

# Soru 11 - Dokuzuncu soruda yer alan vektörü sıralamak için nasıl bir yol izlenir?

sort(x)

# -----------------------------------------------------------------------------------------

# Soru 12 - Karakter verilerinden oluşan bir vektör yaratalım
# elde edilen iller vektörünü faktöre çeviren R kodunu yazınız.

iller <- c("ANKARA", "ANKARA", "İSTANBUL", "İZMİR", "ANKARA", "İZMİR", "ESKİSEHİR", "ERZİNCAN")

faktor <- factor(iller)
faktor

# -----------------------------------------------------------------------------------------

# Soru 13 - Yukarıdaki elde edilen faktör üzerinde İSTANBUL yerine ANTALYA ifadesini 
# yerleştiren R kodunu yazınız.

# faktördeki seviyelerden İSTANBUL olan ifadenin yerine ANTALYA ifadesinini yerleştirelim
levels(faktor)[levels(faktor) == "İSTANBUL"]  <- "ANTALYA"
faktor

# -----------------------------------------------------------------------------------------

# Soru 14 - Yukarıdaki iller isimli faktöre SİNOP ifadesini ekleyen R kodunu yazınız.

levels(faktor) <- c(levels(faktor), "SİNOP")
#faktor <- c(faktor,"SİNOP")
faktor

# -----------------------------------------------------------------------------------------