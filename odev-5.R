# 5. Hafta odevi
## Emre Kayık
## https://github.com/emrekayik/r-ile-programlama.git

# Soru 1 - Aşağıdaki tabloda yer alan veri için "başarı" isimli bir veri çerçevesi yaratınız.

# isim    |  matematik  |  fizik |
# -------------------------------|
# burak   |     85      |   70   |
# begüm   |     80      |   65   |
# ata     |     95      |   85   |
# selin   |     85      |   70   |
# sezin   |     80      |   82   |
# papatya |     88      |   75   |
# mustafa |     90      |   80   |
# emine   |     95      |   90   |

basari <- data.frame(
  isim = c("burak", "begum", "ata", "selin", "sezin", "papatya", "mustafa", "emine"),
  matematik = c(85, 80, 95, 85, 80, 88, 90, 95),
  fizik = c(70, 65, 85, 70, 82, 75, 80, 90)
)

# -----------------------------------------------------------------------------------------

# Soru 2 - Yukarıda yaratılan "başarı" isimli veri çerçevesi ile ilgili olarak aşağıdaki
# işlemleri yapmak üzere kodları yazınız.

## a. Veri çerçevesi özniteliklerinin neler olduğunu görüntüleyiniz.
names(basari)

## b. Veri çerçevesinin 1. sütununu görüntüleyiniz.
basari$isim

## c. Veri çerçevesinin 5. satırını görüntüleyiniz.
basari[5,]

## d. Veri çerçevesinde [3,3] konumundaki elemanı görüntüleyiniz.
basari[3,3]

## e. Matematik dersinden 90 ve daha yukarı başarı puanı alanları listeleyiniz.
basari[basari$matematik >= 90,]

## f. Veri çerçevesinin boyutlarını görüntüleyiniz.
dim(basari)

## g. Veri çerçevesinin kaç satır ve kaç sütundan oluştuğunu görüntüleyiniz.
nrow(basari)
ncol(basari)

# -----------------------------------------------------------------------------------------

# Soru 3 - Satış bilgilerini içeren tabloya uygun olarak aşağıda belirtilen işlemleri yapınız.

#   Ürün          |  Ocak   |  Şubat  |
# ------------------------------------|
#   Mont          |   120   |   131   |
#   Takım Elbise  |   52    |   45    |
#   Kravat        |   215   |   200   |
#   Gömlek        |   105   |   123   |
#   Ayakkabı      |   60    |   86    |


## a. Yukarıdaki tabloyu kullanarak "satis" isimli bir veri çerçevesi oluşturunuz.
satis <- data.frame(
  urun = c("mont", "takim elbise", "kravat", "gomlek", "ayakkabi"),
  ocak = c(120, 52, 215, 105, 60),
  subat = c(131, 45, 200, 123, 86)
)

## b. Mevcut satış verisine Mart ayı satış rakamlarını c(140,53,,195,112,90) içeren "mart"
## başlıklı sütunu ekleyiniz.
satis$mart <- c(140, 53, 195, 112, 90)

## c. Veri sonuna kazak isimli yeni bir ürün ekleyiniz. Bu ürünün Ocak, Şubat ve Mart
## aylarındaki satış rakamları sırasıyla c(122,107,150) biçiminde olsun.
satis <- rbind(satis, c("kazak", 122, 107, 150))

## d. Ocak ayı kravat satış rakamını 195 olarak güncelleyiniz.
satis[satis$urun == "kravat", "ocak"] <- 195

## e. Verinin 3. satırını siliniz.
satis <- satis[-3,]

## f. Verinin 1. sütununu siliniz.
satis <- satis[,-1]

# -----------------------------------------------------------------------------------------

# Soru 4 - R'nin yerleşik veri kümeleri arasında yer alan iris, bir veri çerçevesi olarak
# düzenlenmiştir. Bu veri kümesi ile ilgili olarak aşağıdaki sorulara uygun R kodlarını yazınız.

## a. Veri kümesi kaç satır ve sütundan oluşmaktadır?
dim(iris)

## b. Veri kümesinin sadece 100-110 arasındaki satırlarını görüntüleyiniz.
iris[100:110,]

## c. Veri kümesinin özniteliklerini yazınız.
names(iris)

## d. Veri kümesinin sütun isimlerini listeleyiniz.
colnames(iris)

## e. Sepal.Length sütununun toplamını ve ortalamasını hesaplayınız.
sum(iris$Sepal.Length)
mean(iris$Sepal.Length)

## f. Sepal.Length değeri 7'den büyük olan satırları listeleyiniz.
iris[iris$Sepal.Length > 7,]

## g. Species sütununda "virginica" yazılı satırları listeleyiniz.
iris[iris$Species == "virginica",]
