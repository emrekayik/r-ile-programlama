# 1. Hafta odevi
## Emre Kayık

# Soru 1 - R dışındaki bilimsel araştırmalara yöneli betik temelli diller:

# - Python
# - Julia
# - MATLAB

# --------------------------------------------------------------------------------------------------------------------

# Soru 2 - R konsolunda işlemleri tanımlayalım ve işlem sonuçlarını göremeye çalışalım:

print(5*(25+15))
print(3/0.25)
print((11+24)/46)
print(1/(2+30))

# --------------------------------------------------------------------------------------------------------------------

# Soru 3 - Mevcut test isimli bir nesneyi silmek için:

test = "test"
rm(test)
print(test)

# --------------------------------------------------------------------------------------------------------------------

# Soru 4 - Bir x nesne değişkenine 25 sayısal değerini atadıktan sonra işlem yapalım:

x <- 25
print(2 * x + 1)
print(x^2 + x + 1)
print((x - 1) / x^3)
print((x + 1)^2)

# --------------------------------------------------------------------------------------------------------------------

# Soru 5 - Aşağıdaki işlem sonucunda ne elde edilir?

durum <- TRUE
as.integer(durum)

# --------------------------------------------------------------------------------------------------------------------

# Soru 6 - R'nin iris isimli veri kümesinin ilk altı satırını görünüleyin. Bu veri kümesi hangi değişkenlere sahiptir?

# veri kümesinin çağırılması
data(iris)
# veri setinin ilk 6 satırının görüntülenmesi
print(head(iris, 6))

# --------------------------------------------------------------------------------------------------------------------

# Soru 7 - R'nin biyokimyasal oksijen talebini konu edinen ˋBODˋ isimli veri kümesinin tüm satılarını görüntüleyiniz. 
# Bu veri kümesi hangi degiskenlere sahiptir?

data("BOD")
# veri kümesinin yüklenmesi
print(BOD)
# Veri setinin değişken isimlerinin listelenmesi
print(names(BOD))


# --------------------------------------------------------------------------------------------------------------------

# Soru 8 - R'nin iris isimli veri kümesi kaç adet satır ve sütundan oluşmaktadır. R fonksiyonları yardımıyla görüntüleyiniz.

# iris data setini yükleme
data(iris)

# Satır ve sütun sayısını öğrenmek için dim fonksiyonu kullanılır
dim(iris)
# Ayrıca nrow() ve ncol() fonksiyonlarını kullanarak ayrı ayrı öğrenebiliriz.
nrow(iris)
ncol(iris)

# --------------------------------------------------------------------------------------------------------------------

# Soru 9 - Bir veri kümesi hakkında özet bilgi nasıl elde edilir. BOD isimli veri kümesi hakkında özet bilgiyi görüntüleyiniz?

data("BOD")
# veri kümesi hakkında özet bilgi için str fonksiyonu kullanılabilir.
str(BOD)

# --------------------------------------------------------------------------------------------------------------------

# Soru 10 - Bilgisayarınıza kitabın son bölümünde kullanılacak olan cluster isimli R paketini yükleyiniz.

# paketi yüklemek için
install.packages("cluster")
# paketi aktif etmek için
library(cluster)

# --------------------------------------------------------------------------------------------------------------------

# Soru 11 - Bir paket yükledikten sonra R oturumuna nasıl tanıtılır? R'nin kendi yerel veri kümeleri için de bu yol izlenir mi?

# R dilinde paketleri yüklemek için install.packages() fonksiyonu kullanılır
install.packages("cluster")
# mesela yukarıdaki fonksiyonu kullanarak cluster isimli paketi kurabiliriz.
# aktif hale getirmek için de:
library(cluster)
# fonksiyonu ile de aktif edebiliriz.

# R'nin kendi yerel kümeleri için herhangi bir kuruluma ihtiyaç yoktur.

# --------------------------------------------------------------------------------------------------------------------

# Soru 12 - R'nin ls() fonksiyonu ile ilgili yardım sayfalarına R konsolu üzerinden nasıl ulaşılabilir?

# R'da herhangi bir fonksiyonun yardım sayfasına ulaşmak için help() fonksiyonu kullanılabilir.
help(ls)
# Yukarıdaki fonksiyonu kullanarak ls() fonksiyonunun yardım sayfalarına ulaşılabilir. 
# Ayrıca daha kısa bir yol olan
?ls
# fonksiyonu da kullanılabilir.

# --------------------------------------------------------------------------------------------------------------------

# Soru 13 - R konsolu üzerinden e1071 isimli paketin fonksiyonları ile ilgili listeyi içeren yardım sayfaslarına nasıl ulaşılır?

help(package="e1071")
# yukarıdaki fonksiyonu kullanarak e1071 paketindeki tüm fonksiyonların bir listesini ve kısa açıklamalarını görebiliriz.
# Ayrıca RStudio kullanıyorsak yukarıdaki menülerde olan Help menüsünden arama çubuğu yardımı ile paketlerin yardım sayfalarına erişebiliriz.

# --------------------------------------------------------------------------------------------------------------------

# Soru 14 - R konsolu üzerinden e1071 isimli paketin svm fonksiyonuna doğrudan nasıl ulaşılabilir?

# paketi yüklemek için
install.packages("e1071")
# paketi aktif etmek için
library(e1071)
# svm fonksiyonuna erişmek için
model <- e1071::svm(x = iris)

# --------------------------------------------------------------------------------------------------------------------

# Soru 15 - R için çalışma alanı olarak C:/Test/ dizinini tanımlayınız.

# R'da çalışma alanı tanımlamak için setwd fonksiyonu kullanılır.
setwd("C:/Test/")
# aşağıdaki fonksiyon ile de çalışma alanı görüntülenebilir.
getwd()

# --------------------------------------------------------------------------------------------------------------------

