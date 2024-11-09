# 3. Hafta odevi
## Emre Kayık
## https://github.com/emrekayik/r-ile-programlama.git

# Soru 1 - Aşağıda tanımlanan x vektörünü 3 satır ve 4 sütundan oluşan,
# bir başka deyişle (3x4) boyutlarında matrise dönüştüren R kodunu yazınız.

x <- c(3,7,8,2,1,0,-1,3,8,8,6,3)
matrix(x, nrow = 3, ncol = 4)

# -----------------------------------------------------------------------------------------

# Soru 2 - (7,3,2,1,6,3,8,3,1) elemanlarından oluşan (3x3) boyutundaki
# matrisi yaratan R kodunu yazınız.

y <- c(7,3,2,1,6,3,8,3,1)
matrix(y, nrow = 3, ncol = 3)

# -----------------------------------------------------------------------------------------

# Soru 3 - Aşağıdaki matrisi yaratan kodu yazınız.

# | 5  2  7 |
# | 8  3  0 |
# | -2 2  6 |

matrix(c(5, 2, 7, 8, 3, 0, -2, 2, 6), nrow = 3, ncol = 3, byrow = TRUE)

  
# -----------------------------------------------------------------------------------------

# Soru 4 - Aşağıdaki matrisi yaratan kodu yazınız.

# | -1  4  -5 |
# | 0   3   8 |

matrix(c(-1, 4, -5, 0, 3, 8), nrow = 2, ncol = 3, byrow = TRUE)

# -----------------------------------------------------------------------------------------

# Soru 5 - Aşağıdaki matrisi yarattıktan sonra, birinci satır 3. sütununun elemanını
# 9 olarak değiştiren kodu yazınız.

# | 7   1   1   3 |
# | 2   1   2   1 |
# | 3   0   6   7 |

matris <- matrix(c(7, 1, 1, 3, 2, 1, 2, 1, 3, 0, 6, 7), nrow = 3, ncol = 4, byrow = TRUE)
matris[1, 3] <- 9

# -----------------------------------------------------------------------------------------

# Soru 6 - Aşağıdaki matris üzerinde 3'den büyük elemanları seçerek bulan.
# R kodunu yazınız.

# |  2    5   0 |
# |  2   -4   6 |
# | -2    1   2 |

matris <- matrix(c(2, 5, 0, 2, -4, 6, -2, 1, 2), nrow = 3, ncol = 3, byrow = TRUE)
matris[matris > 3]


# -----------------------------------------------------------------------------------------

# Soru 7 - Aşağıdaki matrisin 2. sütununu silen R kodunu yazınız.

# |  1    6   2 |
# |  3    4  -6 |
# |  5   11   4 |

matris <- matrix(c(1, 6, 2, 3, 4, -6, 5, 11, 4), nrow = 3, ncol = 3, byrow = TRUE)
matris <- matris[, -2]

# -----------------------------------------------------------------------------------------

# Soru 8 - Aşağıdaki matrisin c(3,4) vektörünü sütun olarak ekleyen R kodunu yazınız.

# |  2    2   8 |
# | 10    7  -3 |

matris <- matrix(c(2, 2, 8, 10, 7, -3), nrow = 2, ncol = 3, byrow = TRUE)
matris <- cbind(matris, c(3, 4))

# -----------------------------------------------------------------------------------------

# Soru 9 - Aşağıdaki matrisleri satır olarak birleştiren R kodunu yazınız.

# |  2  3   0 |     | 1   7   12 |
# |  1  0   6 | ve  | 7   14   0 |
# |  1  1   3 |     | 8   21   2 |

matris1 <- matrix(c(2, 3, 0, 1, 0, 6, 1, 1, 3), nrow = 3, ncol = 3, byrow = TRUE)
matris2 <- matrix(c(1, 7, 12, 7, 14, 0, 8, 21, 2), nrow = 3, ncol = 3, byrow = TRUE)
rbind(matris1, matris2)

# -----------------------------------------------------------------------------------------