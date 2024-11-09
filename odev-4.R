# 4. Hafta odevi
## Emre Kayık
## https://github.com/emrekayik/r-ile-programlama.git

# Soru 1 - "ANKARA",6,TRUE elemanlarından oluşan test isimli bir liste yaratınız.

test <- list("ANKARA", 6, TRUE)

# -----------------------------------------------------------------------------------------

# Soru 2 - R'nin yerel veri kümeleri arasında yer alan iris, BOD ve cars 
# isimli veri kümelerini içeren veri isimli listeyi yaratınız.

veri <- list(iris = iris, BOD = BOD, cars = cars)
veri

# -----------------------------------------------------------------------------------------

# Soru 3 - Aşağıda yaratılan vektörden dListe isimli bir liste oluşturmaya
# yarayan R kodlarını yazınız.
# dersler <- c("Matematik", "Fizik", "Kimya")

dersler <- c("Matematik", "Fizik", "Kimya")
dListe <- list(dersler)

# -----------------------------------------------------------------------------------------

# Soru 4 - Yukarıda elde ettiğiniz dListe listesinin ikinci elemanı
# nasıl görüntülenir?

dListe[[1]][2]
# dListe[[1]] ifadesi listedeki ilk elemana erişir.
# dListe[[1]][2] ifadesi listedeki ilk elemanın ikinci elemanına erişir.

# -----------------------------------------------------------------------------------------

# Soru 5 - Aşağıda gösterildiği biçimde bir liste yaratıldığını varsayalım.
# Bu listede mat matrisinin [3, 3] indeksli elemanına nasıl ulaşılır?
# mat <- matrix(c(12, 17, 23, 15, 46, 17, 3, 45, 29),3)
# vek <- c(3, 4, 1, 9, 8, 7)
# lis <- list(mat, vek)

mat <- matrix(c(12, 17, 23, 15, 46, 17, 3, 45, 29), 3)
vek <- c(3, 4, 1, 9, 8, 7)
lis <- list(mat, vek)

lis[[1]][3, 3]
# lis[[1]] ifadesi listedeki ilk elemana erişir.
# lis[[1]][3, 3] ifadesi listedeki ilk elemanın 
# 3. satır ve 3. sütunundaki elemana erişir.

# -----------------------------------------------------------------------------------------

# Soru 6 - yukarıdaki lis isimli listeyi elde ederken her bir liste elemanınına isim
# verilmesinin sağlamak üzere nasıl bir yol izlenebilir?

## 1. yol - liste oluştururken doğrudan isimlendirme
lis <- list(mat = mat, vek = vek)

## 2. yol - names() fonksiyonu kullanarak sonradan isimlendirme işlemi
lis <- list(mat, vek)
names(lis) <- c("mat", "vek")

# -----------------------------------------------------------------------------------------

# Soru 7 - Yukarıdaki elde edilen listenin her bir elemanını liste dışına çıkararak
# doğrudan kullanılabilmesi için nasıl bir yol izlenebilir?

# 1. yol - attach() fonksiyonu kullanarak
attach(lis)

# 2. yol - direkt atama yaparak
mat <- lis$mat # mat <- lis[[1]]
vek <- lis$vek # vek <- lis[[2]]

# 3. yol - with() fonksiyonu kullanarak
with(lis, mat)
with(lis, vek)

# -----------------------------------------------------------------------------------------

# Soru 8 - Yukarıda elde edilen listeye aşağıdaki vektörü eklemek için 
# nasıl bir yol izlenmelidir?
# vek2 <- c(3, 7, 2, 1, 1, 5)

vek2 <- c(3, 7, 2, 1, 1, 5)
lis <- c(lis, list(vek2 = vek2))

# -----------------------------------------------------------------------------------------

# Soru 9 - Bir listeden iki numaralı indekse sahip elemanını silmek için 
# nasıl bir yol izlenebilir?
# Yukarıda elde edilen liste üzerinde deneyiniz.

# 1. yol - NULL atama
lis[[2]] <- NULL
lis

# 2. yol - negatif indeksleme
lis <- lis[-2]

# -----------------------------------------------------------------------------------------

# Soru 10 - Aşağıdaki yaratılan listeyi gözönüne alalım. Bu listenin
# üyelerinden olan vektr isimli vektörün 3. elemanını 33 olarak değiştirmek
# için gerekli R kodlarınız yazınız.
# matr <- matrix(c(15,12,16,3,2,1,7,4,3),3, 3)
# vektr <- c(12,15,23,45,66,19,26,33)
# liste <- list(m=matr, v=vektr)

matr <- matrix(c(15, 12, 16, 3, 2, 1, 7, 4, 3), 3, 3)
vektr <- c(12, 15, 23, 45, 66, 19, 26, 33)
liste <- list(m = matr, v = vektr)
liste$v[3] <- 33

# -----------------------------------------------------------------------------------------