# 6. Hafta odevi
## Emre Kayık
## https://github.com/emrekayik/r-ile-programlama.git

## 1. Karakter Dizileri

# Soru 1 - "R programlama dili" karakterlerinden oluşan bir karakter dizisi oluşturunuz.

dizi <- "R programlama dili"
dizi

# -----------------------------------------------------------------------------------------

# Soru 2 - Yukarıda yaratılan karakter dizisi nasıl boşaltılır?

dizi <- ""
dizi

# -----------------------------------------------------------------------------------------

# Soru 3 - "Kaz Dağları" ifadesinden oluşan karakter dizisini yarattıktan sonra içinde
# kaç karakter yer aldığını bulan R kodunu yazınız.

dizi <- "Kaz Dağları"
nchar(dizi)

# -----------------------------------------------------------------------------------------

# Soru 4 - Yukarıda elde edilen karakter dizisini "Oksijen Kaynağıdır" karakter dizisiyle
# birleştirerek tek bir karakter dizisine dönüştüren R kodunu yazınız.

dizi <- paste(dizi, "Oksijen Kaynağıdır")
dizi

# -----------------------------------------------------------------------------------------

# Soru 5 - "30 sayısının karekökü" ifadesini görüntüledikten sonra hemen yanında sqrt(30)
# ile hesaplayan ve bu sonucu birleştiren R kodunu yazınız.

karekok_hesap <- function(kok){
  paste(kok, " sayısının karekökü ", sqrt(kok))
}

print(karekok_hesap(30))

# -----------------------------------------------------------------------------------------

# Soru 6 - "Türkiye'nin Başkenti Ankara'dır" karakter dizisinin tüm elemanlarını harfe 
# çeviren R kodunu yazınız.

metin <- "Türkiye'nin Başkenti Ankara'dır"
harfler <- unlist(strsplit(metin, split = ""))
print(harfler)

# -----------------------------------------------------------------------------------------

# Soru 7 - "Türkiye Büyük Millet Meclisi" ifadesinin sadece baş harflerini görüntüleyerek 
# kısaltan R kodunu yazınız.

metin <- "Türkiye Büyük Millet Meclisi"
kisaltilmis <- paste0(substr(unlist(strsplit(metin, " ")), 1, 1), collapse = "")
print(kisaltilmis)

# strsplit: Kelimeleri ayırır.
# unlist: Listeyi düzleştirir.
# substr: Her kelimenin ilk harfini alır.
# paste0: İlk harfleri birleştirir.


# -----------------------------------------------------------------------------------------

# Soru 8 - "R Bilimsel Araştırma Dilidir" ifadesinin 3-20 arasındaki karakterleri içeren
# alt dizi R ile nasıl yapılır.

metin <- "R Bilimsel Araştırma Dilidir"
substr(metin, 3, 20)

# -----------------------------------------------------------------------------------------

# Soru 9 - Yukarıdaki ifadenin birinci karakterini "C" olarak değiştiren R kodunu yazınız.

metin <- "R Bilimsel Araştırma Dilidir"
substr(metin, 1, 1) <- "C"
print(metin)


# -----------------------------------------------------------------------------------------

# Soru 10 - 30/7 ifadesinin sonucunu iki ondalıklı olarak görüntülemek için uygun kodu yaz.

sonuc <- 30/7
sprintf("%.2f", sonuc)

# -----------------------------------------------------------------------------------------

# Soru 11 - Yukarıdaki ifadeyi bu bilimsel formatta görüntüleyen R kodunu yazınız.

sprintf("%.2e", sonuc)

# -----------------------------------------------------------------------------------------

# Soru 12 - 15, 22, 14, 11, 20 sayısal değerlerini içeren bir vektör yaratınız. Bu vektörün
# gürünümünü bir karakter dizisine çeviren R kodunu yazınız.

vektor <- c(15, 22, 14, 11, 20)
dizi <- paste(vektor)
print(dizi)

# -----------------------------------------------------------------------------------------

# Soru 13 - Aşağıdaki metin isimli karakter dizisini göz önüne alalım.

metin <- c("R", "programlama dili", "veri işleme", "hesaplama ve grafik", "görüntüleme", 
           "konusunda", "geniş olanaklar", "sunan", "bir yazılım", "geliştirme ortamı", 
           "olarak", "tanımlanabilir")
# -----------------------------------------------------------------------------------------
## a - "veri" kelimesi hangi dizi elemanları içinde yer almaktadır? Dizi içindeki konumunu
## bulunuz.

# hangi indekslerde bulmak için:
indeksler <- grep("veri", metin)
indeksler

# hangi pozisyonlarını bulma:
pozisyonlar <- lapply(metin[bulunan_indeksler], function(x) gregexpr("veri", x)[[1]])
pozisyonlar

# -----------------------------------------------------------------------------------------
## b - Yukarıdaki aramayı mantıksal sonuçlar üretecek biçimde yazınız.

grepl("veri", metin)

# -----------------------------------------------------------------------------------------
## c - Yukarıdaki arama sonuçlarının tam adresini belirlemek için hangi yol izlenebilir?**

tam_adresler <- mapply(function(indeks, pozisyon) {
  list(Eleman = indeks, Pozisyon = pozisyon)
}, indeksler, pozisyonlar, SIMPLIFY = FALSE)
print(tam_adresler)

# -----------------------------------------------------------------------------------------
# -----------------------------------------------------------------------------------------

## 2. Veri Giriş Çıkışı

# Soru 1 - Terminalden etkileşimşi birlikte tek tek sayısal veri girişi yaparak bu verileri
# test isimli bir vektörde toplayan R kodunu yazınız.

test <- c()
for(i in 1:5){
  test[i] <- as.numeric(readline(prompt = "Bir sayı giriniz: "))
}
test

# -----------------------------------------------------------------------------------------

# Soru 2 - Terminalden etkileşimli birlikte satır şeklinde veri girişi yaparak bunları 
# veri isimli bir vektörde toplayan R kodunu yazınız.

veri <- c()
for(i in 1:5){
  veri[i] <- as.character(readline())
}

# -----------------------------------------------------------------------------------------

# Soru 3 - Çalışma dizinini "C:/test" biçiminde değiştiren kodu yazınız.

setwd("C:/test")

# -----------------------------------------------------------------------------------------

# Soru 4 - Çalışma dizinininde hangi dosyaların yer aldığını gösteren kodu yazınız.

list.files()

# -----------------------------------------------------------------------------------------

# Soru 5 - "R Programlama Dili" ifadesinin çalışma dizininizde test isimli bir dosyaya
# yönlendirerek kaydedilmesini sağlayan R kodunu yazınız.

write("R Programlama Dili", file = "test.txt")

# -----------------------------------------------------------------------------------------

# Soru 6 - Yukarıda yaratılan test isimli dosyaya bu kez "Bilimsel bir dildir" ifadesini
# ekleyen R kodunu yazınız.

write("Bilimsel bir dildir", file = "test.txt", append = TRUE)

# -----------------------------------------------------------------------------------------

# Soru 7 - Bir veri çerçevesinin konsol üzerinde görünümünün aşağıda gösterildiği gibi
# olduğunu varsayalım. Bu veri çerçevesini benzer biçimde yarattıktan sonra çalışma dizini
# içinde "isimler.txt" dosyasına yönlendirerek yazdırılmasını sağlayan kodu yazınız.

# yas   |  isim     |  yer
# -----------------------
# 25    | Burak     | İstanbul
# 21    | Begüm     | İstanbul
# 30    | Pervin    | Sinop
# 29    | Ata       | Isparta

veri_cercevesi <- data.frame(yas = c(25, 21, 30, 29),
                             isim = c("Burak", "Begüm", "Pervin", "Ata"),
                             yer = c("İstanbul", "İstanbul", "Sinop", "Isparta"))
write.table(veri_cercevesi, file = "isimler.txt", sep = "\t", row.names = FALSE)

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

# -----------------------------------------------------------------------------------------

